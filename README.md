# nushell-config

Nushell の設定ファイル。

## SSH 時の日本語入力

SSH 接続先で日本語入力を使えるようにするため、以下の設定を行っている。

### env.nu

`UIM_DEFAULT_IM_ENGINE` に `anthy-utf8` を設定し、uim のデフォルト入力エンジンを Anthy (UTF-8) にしている。

### config.nu

SSH セッションかつ Zellij 内で、`uim-fep` を自動起動する。条件は以下の通り:

- `SSH_CONNECTION` が設定されている (SSH 接続中)
- `UIM_FEP` が未設定 (二重起動防止)
- `ZELLIJ` が設定されている (Zellij 内)

これにより SSH ログイン → Zellij 起動後に `uim-fep -u anthy-utf8` が自動で立ち上がり、日本語入力が可能になる。

### 前提パッケージ

- `uim`
- `anthy`
