# hatsu-yakitori Ultimate Build System (2025 Final Form)
# make で実行 → Shake に処理を委譲する

.PHONY: all build test test-salmonella clean info help
.PHONY: boids fmm sssp kak-decomposition golay24-tool

# デフォルトは help
all: help

# すべてのターゲットを Shake に移行
%::
	@stack runhaskell shake/Shake.hs $@

# 直接 make boids のように呼び出された場合も対応
boids fmm sssp kak-decomposition golay24-tool:
	@stack runhaskell shake/Shake.hs $@

help:
	@echo "hatsu-yakitori — KAK decomposition framework for Chicken Scheme"
	@echo ""
	@echo "Usage:"
	@echo "  make                    → show this help"
	@echo "  make build MODULE=boids → build specific module"
	@echo "  make test MODULE=fmm    → test specific module"
	@echo "  make boids              → shortcut for build + test boids"
	@echo "  make test-all-salmonella"
	@echo "  make clean"
	@echo ""
	@echo "Available modules: boids fmm sssp kak-decomposition golay24-tool"