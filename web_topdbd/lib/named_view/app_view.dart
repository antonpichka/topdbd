import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_view/auth_main_view.dart';
import 'package:web_topdbd/named_view/balance_view.dart';
import 'package:web_topdbd/named_view/home_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view/top_players_view.dart';
import 'package:web_topdbd/named_view_model/app_view_model/test_app_view_model.dart';

final class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState extends State<AppView> {
  /// RELEASE CODE
  // late final AppViewModel _appViewModel;
  /// TEST CODE
  late final TestAppViewModel _appViewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _appViewModel = AppViewModel();
    /// TEST CODE
    _appViewModel = TestAppViewModel();
    super.initState();
    _initParameterAppViewModel();
  }

  @override
  void dispose() {
    _appViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
        routerConfig: _getRouterConfig
    );
  }

  Future<void> _initParameterAppViewModel()
  async {
    _appViewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    _appViewModel.listeningStreamsTempCacheService();
    _appViewModel.listeningStreamsFirebaseFirestoreService();
    final result = await _appViewModel.init();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _appViewModel.notifyStreamDataForAppView();
  }

  RouterConfig<RouteMatchList> get _getRouterConfig {
    return GoRouter(
        routes: [
          GoRoute(
              path: KeysNavigationUtility.navigationViewQQHome,
              name: KeysNavigationUtility.navigationViewQQHome,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromFourParameterAppViewModel(context,HomeView());
              }),
          GoRoute(
              path: KeysNavigationUtility.navigationViewQQTopPlayers,
              name: KeysNavigationUtility.navigationViewQQTopPlayers,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromFourParameterAppViewModel(context,TopPlayersView());
              }),
          GoRoute(
              path: KeysNavigationUtility.navigationViewQQBalance,
              name: KeysNavigationUtility.navigationViewQQBalance,
              pageBuilder: (BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromFourParameterAppViewModel(context,BalanceView());
              }),
         /* GoRoute(
              path: KeysNavigationUtility.navigationViewQQTournaments,
              name: KeysNavigationUtility.navigationViewQQTournaments,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromFourParameterAppViewModel(context,state,TournamentsView());
              }),*/
        ],
        errorPageBuilder: (BuildContext context, GoRouterState state) {
          return const MaterialPage(child: Scaffold(body: Center(child: Text("404 NOT FOUND"))));
        });
  }

  MaterialPage _getChoicedMaterialPageFromFourParameterAppViewModel(BuildContext context,Widget namedView) {
    final dataForNamedParameterNamedStreamWState = _appViewModel.getDataForNamedParameterNamedStreamWState;
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereThoseWorksFromThree(context,250,18)),
          Condition.equals(name: TABLET, value: _getWidgetWhereThoseWorksFromThree(context,300,24)),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereThoseWorksFromThree(context,400,30)),
        ]
    ).value ?? Container();
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAppView.isLoading:
        return const MaterialPage(child: Scaffold(body: Center(child: CircularProgressIndicator())));
      case EnumDataForAppView.exception:
        return MaterialPage(child: Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"))));
      case EnumDataForAppView.thoseWorks:
        return MaterialPage(child: value);
      case EnumDataForAppView.authMainView:
        return MaterialPage(child: AuthMainView(namedView));
      case EnumDataForAppView.mainView:
        return MaterialPage(child: MainView(namedView));
      default:
        return MaterialPage(child: Container());
    }
  }

  Widget _getWidgetWhereThoseWorksFromThree(BuildContext context,double sizedBoxWidth,double textSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: sizedBoxWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Engineering works. Check back later",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ])
        ),
      ),
    );
  }
}