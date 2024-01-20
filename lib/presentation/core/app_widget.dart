import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vuexy_flutter/application/core/theme_manager.dart';
import 'package:vuexy_flutter/generated/l10n/app_localizations.dart';
import 'package:vuexy_flutter/routes/router.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeManager()),
      ],
      child: Consumer<ThemeManager>(
        builder: (_, themeManager, __) => MaterialApp.router(
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          debugShowCheckedModeBanner: false,
          theme: themeManager.lightThemeData,
          darkTheme: themeManager.darkThemeData,
          themeMode: themeManager.currentThemeMode,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: _appRouter.config(),
        ),
      ),
    );
  }
}
