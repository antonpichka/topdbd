import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/app_view_list_view_model.dart';

final class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState extends State<AppView> {
  late final AppViewListViewModel _appViewListViewModel;

  @override
  void initState() {
    _appViewListViewModel = AppViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _appViewListViewModel.dispose();
    super.dispose();
  }

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
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 599, name: MOBILE),
            const Breakpoint(start: 600, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: double.infinity, name: DESKTOP),
          ],
        ),
        initialRoute: "/",
        routes: {
          "/" : (context) {
            final dataForAppView = _appViewListViewModel.getDataForAppView;
            switch(dataForAppView?.getEnumDataForAppView) {
              case EnumDataForAppView.isLoading:
                return const Scaffold(body: Center(child: CircularProgressIndicator()));
              case EnumDataForAppView.exception:
                return Scaffold(body: Center(child: Text("Exception: ${dataForAppView?.exceptionController.getKeyParameterException}")));
              case EnumDataForAppView.success:
                // return AntiDDosSystemView();
                return MainView();
                // return InitializeServiceSystemView();
              default:
                return Container();
            }
          }
        });
  }

  Future<void> _init()
  async {
    _appViewListViewModel
        .getStreamDataForAppView
        .listen((event) {
          setState(() {});
        });
    final result = await _appViewListViewModel.initForAppView();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _appViewListViewModel.notifyStreamDataForAppView();
  }
}