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
            title: Text(AppLocalizations.of(context)!.helloWorld),
          ),
          const ExpansionTile(
            title: Text("Front pages"),
          ),
        ],
      ),
    );
  }
}
