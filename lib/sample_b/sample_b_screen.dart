import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gap/gap.dart';

class SampleBScreen extends StatelessWidget {
  const SampleBScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    const textStyle = TextStyle(fontSize: 24);
    const gap = Gap(16);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(l10n.goodMorning, style: textStyle),
          gap,
          Text(l10n.haveANiceDay, style: textStyle),
          gap,
          Text(l10n.seeYouLater, style: textStyle),
          gap,
          Text(l10n.goodNight, style: textStyle),
          gap,
          Text(l10n.imSorry, style: textStyle),
        ],
      ),
    );
  }
}
