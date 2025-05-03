import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// 複数のテキストを縦に並べて表示する共通ウィジェット
class LocalizedTextGroup extends StatelessWidget {
  /// 表示するテキストのリスト
  final List<String> texts;

  /// テキストのスタイル（オプション）
  final TextStyle? textStyle;

  /// テキスト間のギャップサイズ
  final double gapSize;

  const LocalizedTextGroup({
    super.key,
    required this.texts,
    this.textStyle = const TextStyle(fontSize: 24),
    this.gapSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:
          texts
              .expand((text) => [Text(text, style: textStyle), Gap(gapSize)])
              .toList()
            ..removeLast(),
    );
  }
}
