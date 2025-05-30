# l10n_key_previewは開発段階で諦めたパッケージです。


# l10n_key_preview パッケージの使い方

このリポジトリは、Flutter アプリケーション開発における国際化（i18n/l10n）作業を効率化する `l10n_key_preview` パッケージの使用例を示すサンプルプロジェクトです。

## パッケージの概要

`l10n_key_preview` は、コード内の翻訳キー（`l10n.keyName`）の横に対応する日本語訳をコメントとして自動的に表示するツールです。これにより、開発者は翻訳キーの実際の内容を即座に確認できます。

例：

```dart
// 元のコード
Text(l10n.hello)
Text(l10n.goodMorning)
Text(l10n.thankYou)

// ビルド後に生成されるプレビュー
Text(l10n.hello) // こんにちは
Text(l10n.goodMorning) // おはよう
Text(l10n.thankYou) // ありがとう
```

## 特徴

- **開発効率の向上**: 翻訳キーと実際の日本語訳を同時に確認できます
- **非侵入的**: 元のソースコードを変更せず、プレビュー用の別ファイルを生成します
- **ビルドプロセスに統合**: `build_runner` を使用して自動的に処理されます

## 対応フレームワーク

- Flutter の公式多言語化ソリューション (flutter_localizations)

## 使い方

1. **依存関係の追加**:

   ```yaml
   dependencies:
     l10n_key_preview:

   dev_dependencies:
     build_runner: ^2.4.0
   ```

2. **ARB ファイルの作成**:

   - `lib/l10n/app_en.arb` と `lib/l10n/app_ja.arb` を作成し、それぞれのファイルに翻訳キーを追加してください。その後、使用するファイルで Text(l10n.hello) のように使用してください。
   - その他、標準的な Flutter の国際化設定に従ってください。

3. **ビルドの実行**:

   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

## 開発者向け情報

このツールは特に日本語を使用する開発チームに最適化されており、国際化されたアプリケーションの開発をより直感的かつ効率的にします。翻訳キーだけでは意味がわかりにくい場合でも、コメントで内容を即座に把握できるため、開発速度と品質の向上に貢献します。

## ライセンス

このサンプルプロジェクトおよび `l10n_key_preview` パッケージは MIT ライセンスの下で公開されています。
