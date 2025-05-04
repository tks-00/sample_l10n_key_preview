import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';

class SampleAScreen extends StatelessWidget {
  const SampleAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    const textStyle = TextStyle(fontSize: 24);
    const gap = Gap(16);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(l10n.hello, style: textStyle), // こんにちは
          gap,
          Text(l10n.congratulations, style: textStyle), // おめでとう
          gap,
          Text(l10n.keepGoing, style: textStyle), // がんばって
          gap,
          Text(l10n.thankYou, style: textStyle), // ありがとう
          gap,
          Text(l10n.goodMorning, style: textStyle), // おはよう
        ],
      ),
    );
  }
}
