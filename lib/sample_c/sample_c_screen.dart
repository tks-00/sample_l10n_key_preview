import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';

class SampleCScreen extends StatelessWidget {
  const SampleCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    const textStyle = TextStyle(fontSize: 24);
    const gap = Gap(16);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(l10n.goodNight, style: textStyle),
          gap,
          Text(l10n.goodWork, style: textStyle),
          gap,
          Text(l10n.imHome, style: textStyle),
          gap,
          Text(l10n.please, style: textStyle),
          gap,
          Text(l10n.goodbye, style: textStyle),
        ],
      ),
    );
  }
}
