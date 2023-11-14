import 'package:flutter/material.dart';
import 'package:windows_topdbd/l10n/l10n.dart';
import 'package:windows_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:windows_topdbd/named_vm/main_vm/main_view.dart';

final class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "",
        themeMode: ThemeMode.dark,
        theme: FlutterThemeUtility.light,
        darkTheme: FlutterThemeUtility.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView()
        });
  }
}