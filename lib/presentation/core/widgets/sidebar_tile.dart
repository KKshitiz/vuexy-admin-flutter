import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';

class SidebarTile extends StatelessWidget {
  const SidebarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: const Icon(Icons.home_outlined),
      title: Text(AppLocalizations.of(context).dashboards),
      children: [
        ListTile(
          title: Text(AppLocalizations.of(context).analytics),
        ),
      ],
    );
  }
}
