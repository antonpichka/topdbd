import 'package:flutter/material.dart';
import 'package:windows_topdbd/l10n/l10n.dart';
import 'package:windows_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:windows_topdbd/named_view/main_view.dart';
import 'package:windows_topdbd/named_view_list_view_model/main_view_list_view_model.dart';

final class AppView
    extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "",
        // To test the dark theme in the debug mode,
        // you need to write this line
        // (this is if you test on an android emulator, I did not test it on other emulators)
        themeMode: ThemeMode.dark,
        darkTheme: FlutterThemeUtility.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView(MainViewListViewModel())
        });
  }
}