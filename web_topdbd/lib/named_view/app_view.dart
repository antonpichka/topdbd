import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_view/login_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view/pre_main_view.dart';
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
        routerConfig: routerConfig
    );
  }

  RouterConfig<Object> get routerConfig {
    return GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return Container(color: FlutterThemeUtility.darkBackgroundColor);
            },
            redirect: (BuildContext context, GoRouterState state) {
              return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
            }
          ),
          GoRoute(
              path: '/topPlayers',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.topPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
              }
          ),
          GoRoute(
            path: '/balance',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.balance);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.balance);
              }
          ),
          GoRoute(
            path: '/tournaments',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.tournaments);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.tournaments);
              }
          ),
          GoRoute(
            path: '/login',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.topPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
              }
          ),
          GoRoute(
            path: '/loading',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.topPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
              }
          ),
          GoRoute(
            path: '/exception',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.topPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
              }
          ),
          GoRoute(
              path: '/thoseWorks',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.topPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
              }
          ),
          GoRoute(
              path: '/newVersion',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return getChoicedMaterialPage(context,state,EnumNavigationUtility.topPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return getChoicedUrl(context,state,EnumNavigationUtility.topPlayers);
              }
          ),
        ]);
  }

  String getChoicedUrl(BuildContext context,GoRouterState state,EnumNavigationUtility enumNavigationUtility) {
    final dataForAppView = _appViewListViewModel.getDataForAppView;
    switch(dataForAppView?.getEnumDataForAppView) {
      case EnumDataForAppView.isLoading:
        return "/loading";
      case EnumDataForAppView.exception:
        return "/exception";
      case EnumDataForAppView.thoseWorks:
        return "/thoseWorks";
      case EnumDataForAppView.isNotValidVersionTOPDBDVersionWeb:
        return "/newVersion";
      case EnumDataForAppView.loginView:
        return "/login";
      case EnumDataForAppView.preMainView:
        return "/${enumNavigationUtility.name}";
      case EnumDataForAppView.mainView:
        return "/${enumNavigationUtility.name}";
      default:
        return "";
    }
  }

  MaterialPage getChoicedMaterialPage(BuildContext context,GoRouterState state,EnumNavigationUtility enumNavigationUtility) {
    final dataForAppView = _appViewListViewModel.getDataForAppView;
    final rvWidgetThoseWorks = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildThoseWorks(context,300,24)),
          Condition.largerThan(name: TABLET, value: _buildThoseWorks(context,400,30)),
          Condition.smallerThan(name: TABLET, value: _buildThoseWorks(context,250,18))
        ]
    ).value;
    final rvWidgetIsNotValidVersionTOPDBDVersionWeb = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForAppView?.versionByTOPDBDVersionWeb ?? "",300,24)),
          Condition.largerThan(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForAppView?.versionByTOPDBDVersionWeb ?? "",400,30)),
          Condition.smallerThan(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForAppView?.versionByTOPDBDVersionWeb ?? "",250,18))
        ]
    ).value;
    switch(dataForAppView?.getEnumDataForAppView) {
      case EnumDataForAppView.isLoading:
        return const MaterialPage(
            child: Scaffold(body: Center(child: CircularProgressIndicator())));
      case EnumDataForAppView.exception:
        return MaterialPage(
            child: Scaffold(body: Center(child: Text("Exception: ${dataForAppView?.exceptionController.getKeyParameterException}"))));
      case EnumDataForAppView.thoseWorks:
        return MaterialPage(
            child: rvWidgetThoseWorks!);
      case EnumDataForAppView.isNotValidVersionTOPDBDVersionWeb:
        return MaterialPage(
            child: rvWidgetIsNotValidVersionTOPDBDVersionWeb!);
      case EnumDataForAppView.loginView:
        return MaterialPage(
            child: LoginView());
      case EnumDataForAppView.preMainView:
        return MaterialPage(
            child: PreMainView(enumNavigationUtility));
      case EnumDataForAppView.mainView:
        return MaterialPage(
            child: MainView(enumNavigationUtility));
      default:
        return MaterialPage(
            child: Container());
    }
  }

  Future<void> _init()
  async {
    _appViewListViewModel
        .getStreamDataForAppView
        .listen((event) {
          setState(() {});
        });
    _appViewListViewModel.listeningStreamsTempCacheServiceForAppView();
    await _appViewListViewModel.listeningStreamsFirebaseFirestoreServiceForAppView();
    final result = await _appViewListViewModel.initForAppView();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _appViewListViewModel.notifyStreamDataForAppView();
  }

  Widget _buildThoseWorks(BuildContext context,double sizedBoxWidth,double textSize) {
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

  Widget _buildIsNotValidVersionTOPDBDVersionWeb(BuildContext context,String versionByTOPDBDVersionWeb,double sizedBoxWidth,double textSize) {
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
                                "The site version has been changed. Check back later (Version: $versionByTOPDBDVersionWeb)",
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