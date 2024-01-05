import 'package:flutter/material.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';
import 'package:vuexy_flutter/presentation/core/styles/theme.dart';
import 'package:vuexy_flutter/routes/router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(),
    );
  }
}
