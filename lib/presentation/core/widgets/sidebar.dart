import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView(
        children: [
          ExpansionTile(
            leading: const Icon(Icons.home_outlined),
            title: Text(AppLocalizations.of(context).dashboards),
            children: [
              ListTile(
                title: Text(AppLocalizations.of(context).analytics),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(AppLocalizations.of(context).frontPages),
          ),
        ],
      ),
    );
  }
}
