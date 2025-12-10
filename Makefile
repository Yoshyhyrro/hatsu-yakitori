# Makefile - hatsu-yakitori Build System (Refactored)

# ==============================================================================
# 1. 設定 & コマンド定義
# ==============================================================================

# Shakeのメインスクリプトはルートディレクトリに移動
SHAKE_SRC := Shake.hs

# 必要なパッケージを全て指定
# shake, process, filepath, directory は依存関係として含める
# sbv は形式検証ターゲット(verify)が必要な場合に追加
# rules.hsのGADT/TypeFamiliesを使うため、stack runhaskell を使用
SHAKE_PKGS := shake sbv process directory filepath

# シェイクコマンドの実行方法
# -i. : カレントディレクトリを探索パスに追加し、他のモジュール (Chicken, Rules) を見つけられるようにする
SHAKE_CMD := stack runhaskell --package $(SHAKE_PKGS) -- -i. $(SHAKE_SRC)

# Make引数処理 (ターゲットの後に続く引数を全て取得)
# 例: make test -- -m fmm の '-- -m fmm' の部分
ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

# ==============================================================================
# 2. ターゲット定義
# ==============================================================================

.PHONY: all clean help force verify test build

# デフォルトターゲット
all: build

# 'build'ターゲットはShakeの 'build' phonyを呼び出す
build: force
	@$(SHAKE_CMD) build

# キャッチオールルール: 'clean', 'test', 'verify', モジュール名などをShakeに委譲
%: force
	@$(SHAKE_CMD) "$@" $(ARGS)

# ダミーターゲット
force: ;

# 明示的なヘルプ表示
help:
	@echo "hatsu-yakitori Build Wrapper (Refactored)"
	@echo "========================================="
	@echo "This Makefile delegates all logic to Shake (Shake.hs)."
	@echo ""
	@echo "Common commands:"
	@echo "  make build             : Build all modules (calls Shake 'build')"
	@echo "  make test              : Run tests (calls Shake 'test')"
	@echo "  make verify            : Run formal verification (calls Shake 'verify')"
	@echo "  make clean             : Clean build artifacts (calls Shake 'clean')"
	@echo "  make <module-name>     : Build and test a specific module (e.g., 'make fmm')"
	@echo "  make build MODULE=name : Build specific module (using flags)"
	@echo ""
	@echo "For detailed Shake options, run:"
	@echo "  $(SHAKE_CMD) --help"

# Shakeに渡される引数（ターゲットではないもの）に対する Make のエラーを防ぐ
# 例: make test -- -m fmm の '-m' や 'fmm' の部分
$(ARGS): force
	@: