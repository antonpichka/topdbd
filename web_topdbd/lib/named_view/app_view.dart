import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/keys_parameters_to_navigation_utility.dart';
import 'package:web_topdbd/named_view/exception_to_app_view.dart';
import 'package:web_topdbd/named_view/login_view.dart';
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
        routerConfig: _routerConfig
    );
  }

  Future<void> _init()
  async {
    _appViewListViewModel
        .getStreamDataForAppView
        .listen((event) {
          setState(() {});
        });
    _appViewListViewModel.listeningStreamsTempCacheService();
    await _appViewListViewModel.listeningStreamsFirebaseFirestoreService();
    final result = await _appViewListViewModel.init();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _appViewListViewModel.notifyStreamDataForAppView();
  }

  RouterConfig<Object> get _routerConfig {
    return GoRouter(
        routes: [
          /// In this class (launch)
          GoRoute(
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return Container(color: FlutterThemeUtility.darkBackgroundColor);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/loading',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/exception',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/otherException',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/thoseWorks',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/newVersion',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/login',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/notVerifiedUser',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          GoRoute(
              path: '/hacked',
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state);
              }
          ),
          /// In other class (launch)
          GoRoute(
              path: KeysNavigationUtility.selectedNavigationItemViewQTopPlayers,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state,KeysNavigationUtility.selectedNavigationItemViewQTopPlayers);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state,KeysNavigationUtility.selectedNavigationItemViewQTopPlayers);
              }
          ),
          GoRoute(
              path: KeysNavigationUtility.selectedNavigationItemViewQBalance,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state,KeysNavigationUtility.selectedNavigationItemViewQBalance);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state,KeysNavigationUtility.selectedNavigationItemViewQBalance);
              }
          ),
          GoRoute(
              path: KeysNavigationUtility.selectedNavigationItemViewQTournaments,
              pageBuilder:(BuildContext context, GoRouterState state) {
                return _getChoicedMaterialPage(context,state,KeysNavigationUtility.selectedNavigationItemViewQTournaments);
              },
              redirect: (BuildContext context, GoRouterState state) {
                return _getChoicedUrl(context,state,KeysNavigationUtility.selectedNavigationItemViewQTournaments);
              }
          ),
        ]);
  }

  MaterialPage _getChoicedMaterialPage(BuildContext context,GoRouterState state, [String nameRoute = KeysNavigationUtility.selectedNavigationItemViewQTopPlayers, String id = KeysParametersToNavigationUtility.appViewQId]) {
    final dataForAppView = _appViewListViewModel.getDataForAppView;
    final rvWidgetThoseWorks = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _buildThoseWorks(context,250,18)),
          Condition.equals(name: TABLET, value: _buildThoseWorks(context,300,24)),
          Condition.equals(name: DESKTOP, value: _buildThoseWorks(context,400,30)),
        ]
    ).value ?? Container();
    final rvWidgetIsNotValidVersionTOPDBDVersionWeb = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForAppView?.versionByTOPDBDVersionWeb ?? "",250,18)),
          Condition.equals(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForAppView?.versionByTOPDBDVersionWeb ?? "",300,24)),
          Condition.equals(name: DESKTOP, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForAppView?.versionByTOPDBDVersionWeb ?? "",400,30)),
        ]
    ).value ?? Container();
    final rvWidgetNotVerifiedUser = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _buildNotVerifiedUser(context,250,18,18)),
          Condition.equals(name: TABLET, value: _buildNotVerifiedUser(context,300,24,24)),
          Condition.equals(name: DESKTOP, value: _buildNotVerifiedUser(context,400,30,30)),
        ]
    ).value ?? Container();
    final rvWidgetIsHacked = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _buildIsHacked(context,250,18)),
          Condition.equals(name: TABLET, value: _buildIsHacked(context,300,24)),
          Condition.equals(name: DESKTOP, value: _buildIsHacked(context,400,30)),
        ]
    ).value ?? Container();
    switch(dataForAppView?.getEnumDataForAppView) {
      case EnumDataForAppView.exception:
        return MaterialPage(
            child: ExceptionToAppView(dataForAppView?.exceptionController.getKeyParameterException ?? ""));
      case EnumDataForAppView.otherException:
        return MaterialPage(
            child: ExceptionToAppView(dataForAppView?.otherException ?? ""));
      case EnumDataForAppView.waitingInitStreams:
        return const MaterialPage(
            child: Scaffold(body: Center(child: CircularProgressIndicator())));
      case EnumDataForAppView.thoseWorks:
        return MaterialPage(
            child: rvWidgetThoseWorks);
      case EnumDataForAppView.isNotValidVersionTOPDBDVersionWeb:
        return MaterialPage(
            child: rvWidgetIsNotValidVersionTOPDBDVersionWeb);
      case EnumDataForAppView.login:
        return MaterialPage(
            child: LoginView());
      case EnumDataForAppView.isNotVerifiedUser:
        return MaterialPage(
            child: rvWidgetNotVerifiedUser);
      case EnumDataForAppView.isHacked:
        return MaterialPage(
            child: rvWidgetIsHacked);
      case EnumDataForAppView.main:
        return MaterialPage(
            child: MainView(nameRoute,state.pathParameters[id] ?? ""));
      default:
        return MaterialPage(
            child: Container());
    }
  }

  String _getChoicedUrl(BuildContext context,GoRouterState state,[String nameRoute = KeysNavigationUtility.selectedNavigationItemViewQTopPlayers]) {
    final dataForAppView = _appViewListViewModel.getDataForAppView;
    switch(dataForAppView?.getEnumDataForAppView) {
      case EnumDataForAppView.exception:
        return "/exception";
      case EnumDataForAppView.otherException:
        return "/otherException";
      case EnumDataForAppView.waitingInitStreams:
        return nameRoute;
      case EnumDataForAppView.thoseWorks:
        return "/thoseWorks";
      case EnumDataForAppView.isNotValidVersionTOPDBDVersionWeb:
        return "/newVersion";
      case EnumDataForAppView.login:
        return "/login";
      case EnumDataForAppView.isNotVerifiedUser:
        return "/notVerifiedUser";
      case EnumDataForAppView.isHacked:
        return "/hacked";
      case EnumDataForAppView.main:
        return nameRoute;
      default:
        return "";
    }
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

  Widget _buildNotVerifiedUser(BuildContext context,double sizedBoxWidth,double textSize,double textButtonSize) {
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

  Widget _buildIsHacked(BuildContext context,double sizedBoxWidth,double textSize) {
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