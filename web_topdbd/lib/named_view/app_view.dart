import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/keys_w_to_navigation_utility.dart';
import 'package:web_topdbd/named_view/auth_main_view.dart';
import 'package:web_topdbd/named_view/login_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view_model/app_view_model.dart';

final class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState extends State<AppView> {
  late final AppViewModel _appViewModel;

  @override
  void initState() {
    _appViewModel = AppViewModel();
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
    _appViewModel.listeningStreamsFirebaseFirestoreService();
    final result = await _appViewModel.init();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _appViewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  RouterConfig<Object> get _getRouterConfig {
    return GoRouter(
        routes: [
          GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return Container(color: FlutterThemeUtility.darkBackgroundColor);
              },
          ),
          GoRoute(
              path: '/login',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromContextAndStateAndNameRouteAndIdParameterAppViewModel(context,state);
              },
          ),
          GoRoute(
              path: KeysNavigationUtility.selectedNavigationItemViewQQTopPlayers,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromContextAndStateAndNameRouteAndIdParameterAppViewModel(context,state,KeysNavigationUtility.selectedNavigationItemViewQQTopPlayers);
              },
          ),
          GoRoute(
              path: KeysNavigationUtility.selectedNavigationItemViewQQBalance,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromContextAndStateAndNameRouteAndIdParameterAppViewModel(context,state,KeysNavigationUtility.selectedNavigationItemViewQQBalance);
              },
          ),
          GoRoute(
              path: KeysNavigationUtility.selectedNavigationItemViewQQTournaments,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPageFromContextAndStateAndNameRouteAndIdParameterAppViewModel(context,state,KeysNavigationUtility.selectedNavigationItemViewQQTournaments);
              },
          ),
        ]);
  }

  MaterialPage _getChoicedMaterialPageFromContextAndStateAndNameRouteAndIdParameterAppViewModel(BuildContext context,GoRouterState state, [String nameRoute = KeysNavigationUtility.selectedNavigationItemViewQQTopPlayers, String id = KeysWToNavigationUtility.appViewQQId]) {
    final dataForNamed = _appViewModel.getDataForNamedParameterNamedStreamWState;
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereThoseWorksFromContextAndSizedBoxWidthAndTextSize(context,250,18)),
          Condition.equals(name: TABLET, value: _getWidgetWhereThoseWorksFromContextAndSizedBoxWidthAndTextSize(context,300,24)),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereThoseWorksFromContextAndSizedBoxWidthAndTextSize(context,400,30)),
        ]
    ).value ?? Container();
    final valueSECOND = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(context,250,18,18)),
          Condition.equals(name: TABLET, value: _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(context,300,24,24)),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(context,400,30,30)),
        ]
    ).value ?? Container();
    final valueTHIRD = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereIsHackedFromContextAndSizedBoxWidthAndTextSize(context,250,18)),
          Condition.equals(name: TABLET, value: _getWidgetWhereIsHackedFromContextAndSizedBoxWidthAndTextSize(context,300,24)),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereIsHackedFromContextAndSizedBoxWidthAndTextSize(context,400,30)),
        ]
    ).value ?? Container();
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForAppView.isLoading:
        return const MaterialPage(
            child: Scaffold(body: Center(child: CircularProgressIndicator())));
      case EnumDataForAppView.exception:
        return MaterialPage(
            child: Scaffold(body: Center(child: Text(dataForNamed.exceptionController.getKeyParameterException))));
      case EnumDataForAppView.thoseWorks:
        return MaterialPage(
            child: value);
      case EnumDataForAppView.authMainView:
        return MaterialPage(
            child: AuthMainView(nameRoute,state.pathParameters[id] ?? ""));
      case EnumDataForAppView.mainView:
        return MaterialPage(
            child: MainView(nameRoute,state.pathParameters[id] ?? ""));
      default:
        return MaterialPage(
            child: Container());
    }
  }

  Widget _getWidgetWhereThoseWorksFromContextAndSizedBoxWidthAndTextSize(BuildContext context,double sizedBoxWidth,double textSize) {
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

  Widget _getWidgetWhereNotVerifiedUserFromContextAndSizedBoxWidthAndTextSizeAndTextButtonSize(BuildContext context,double sizedBoxWidth,double textSize,double textButtonSize) {
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
                                "You are not a verified user",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              ElevatedButton(
                                  onPressed: () {

                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).colorScheme.secondary,
                                    foregroundColor: Theme.of(context).textTheme.bodyMedium?.color,
                                  ),
                                  child: Text(
                                    "Logout",
                                    style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyMedium?.color,
                                      fontSize: textButtonSize,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1.8,
                                    ),
                                  )
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

  Widget _getWidgetWhereIsHackedFromContextAndSizedBoxWidthAndTextSize(BuildContext context,double sizedBoxWidth,double textSize) {
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
                                "Someone logged into your account OR your ip address has changed (IP addresses do not match)",
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