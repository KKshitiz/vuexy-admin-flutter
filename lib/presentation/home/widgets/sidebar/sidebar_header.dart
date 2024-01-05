import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';

class SidebarHeader extends StatelessWidget {
  const SidebarHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Icon(Icons.web),
          Text(AppLocalizations.of(context).appTitle),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
