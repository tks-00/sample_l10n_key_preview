import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample_l10n_key_preview/common/localized_text_group.dart';

class SampleAScreen extends StatelessWidget {
  const SampleAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: LocalizedTextGroup(
        texts: [l10n.hello, l10n.congratulations, l10n.keepGoing],
      ),
    );
  }
}
