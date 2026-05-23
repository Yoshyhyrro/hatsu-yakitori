# Git hooks for hatsu-yakitori

このリポジトリでは、誤ってローカル Wiki クローン（`.wiki-temp`）をコミットしないように、GitHub Actions とローカル pre-commit フックを追加しています。

インストール（推奨）

PowerShell:

```powershell
.\scripts\install-git-hooks.ps1
```

Unix/macOS:

```sh
./scripts/install-git-hooks.sh
```

動作
- `.githooks/pre-commit` はコミット直前にステージされたファイルを検査し、`.wiki-temp` を含む変更がある場合はコミットを中止します。  
- `.github/workflows/wiki-guard.yml` はプルリクエスト/プッシュ時に `.wiki-temp` に関連する追跡ファイルや gitlink（160000）エントリを検出すると CI を失敗させます。

注意
- `.githooks` を有効にするには `git config core.hooksPath .githooks` が必要です（インストールスクリプトが行います）。  
- GitHub Actions は自動でチェックするため、PR の段階で誤った変更をブロックできます。
