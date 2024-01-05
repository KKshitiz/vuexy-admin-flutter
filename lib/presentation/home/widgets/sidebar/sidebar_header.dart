import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Icon(Icons.web),
        Text(AppLocalizations.of(context).appTitle),
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // Add functionality here
          },
        ),
      ],
    );
  }
}
