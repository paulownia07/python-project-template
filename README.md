# python-project-template

## 概要

Python 3.14 でのプロジェクト開発をすぐに始められる、Dev Container ベースのプロジェクトテンプレートです。
新規の Python アプリケーションやスクリプト、ライブラリ開発の出発点として利用できます。

## 主な機能

- **Dev Container**: Ubuntu ベースのコンテナに Python 3.14、uv、AWS CLI v2 を用意
- **uv**: 依存関係の管理と仮想環境の作成
- **pytest**: テスト実行（VS Code のテスト機能と連携）
- **Ruff**: Python のフォーマッターとリンター（保存時にフォーマット）
- **Pylance**: `standard` モードでの型チェック
- **Prettier / markdownlint**: Markdown・JSON・YAML の整形と Markdown の静的チェック
- **GitHub テンプレート**: Issue テンプレート、Pull Request テンプレート、Copilot 向け指示ファイル

## 前提条件

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [Visual Studio Code](https://code.visualstudio.com/) と [Dev Containers 拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- AWS CLI の認証情報を使う場合は、ホストの `~/.aws` ディレクトリ（コンテナにマウントされます）

## 使用方法

1. GitHub のリポジトリページで **Use this template** → **Create a new repository** を選択します。
2. 作成したリポジトリをクローンします。

   ```bash
   git clone https://github.com/<your-account>/<your-repository>.git
   ```

3. VS Code でクローンしたフォルダを開きます。
4. コマンドパレットから **Dev Containers: Reopen in Container** を実行します。

## ディレクトリ構成

```text
.
├── .devcontainer/
│   ├── Dockerfile            # コンテナイメージ（Python 3.14、uv、AWS CLI）
│   └── devcontainer.json     # 拡張機能、エディタ設定、起動後コマンド
├── .github/
│   ├── ISSUE_TEMPLATE/       # Issue テンプレート
│   ├── instructions/         # Copilot 向けの Python・ドキュメント用指示
│   ├── skills/               # Copilot エージェント用スキル
│   ├── workflows/            # GitHub Actions ワークフロー
│   ├── copilot-instructions.md
│   └── pull_request_template.md
├── docs/                     # ドキュメント
├── src/                      # アプリケーションコード
├── tests/                    # pytest によるテスト
├── pyproject.toml            # プロジェクト定義と依存関係
└── README.md
```

## 開発手順

1. Dev Container を起動します（初回はイメージのビルドが行われます）。
2. コンテナ作成後に `uv lock && uv sync` が自動実行され、依存関係がインストールされます。
   統合ターミナルでは仮想環境を自動で有効化しないため、仮想環境を使うコマンドは `uv run` 経由で実行します。
   手動で実行する場合は次のコマンドを使います。

   ```bash
   uv sync
   ```

3. RuffでPythonコードをフォーマットし、Lintを実行します。

   ```bash
   uv run ruff format .
   uv run ruff check .
   ```

4. テストを実行します。

   ```bash
   uv run pytest
   ```

5. ファイル保存時にRuffがフォーマットとLintを実行します。Pylanceは開いているファイルのみを`strict`モードで解析し、型チェックの診断はVS Codeの「問題」パネルで確認できます。

## カスタマイズ方法

- **プロジェクト名・説明**: `pyproject.toml` の `[project]` にある `name`、`description` を変更します。
- **依存関係の追加**: `uv add <package>` を実行します。開発用の依存関係は `uv add --dev <package>` を使います。
- **Python バージョン**: `pyproject.toml` の `requires-python` と `.devcontainer/Dockerfile` を変更します。
- **エディタ設定・拡張機能**: `.devcontainer/devcontainer.json` を編集します。
- **Ruff の対象・ルール**: `pyproject.toml` の `[tool.ruff]` と `[tool.ruff.lint]` を編集します。
- **Pylance の型チェック・対象範囲**: `.devcontainer/devcontainer.json` の `python.analysis.typeCheckingMode` と `python.analysis.diagnosticMode` を編集します。
