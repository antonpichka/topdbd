import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_view/initialize_service_system_view.dart';
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
    // return AntiDDosSystemView();
    // return MainView();
    // return InitializeServiceSystemView();
    return GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return Container(color: FlutterThemeUtility.darkBackgroundColor);
            },
            redirect: (BuildContext context, GoRouterState state) {
              final dataForAppView = _appViewListViewModel.getDataForAppView;
              switch(dataForAppView?.getEnumDataForAppView) {
                case EnumDataForAppView.isLoading:
                  return "/loading";
                case EnumDataForAppView.exception:
                  return "/exception";
                case EnumDataForAppView.login:
                  return "/login";
                case EnumDataForAppView.preSuccess:
                  return "/preSuccess";
                case EnumDataForAppView.success:
                  return "/topPlayers";
                default:
                  return "";
              }
            }
          ),
          GoRoute(
            path: '/topPlayers',
            pageBuilder:(BuildContext context, GoRouterState state) {
              return const MaterialPage(
                  key: ValueKey('main'),
                  child: InitializeServiceSystemView(EnumNavigationUtility.topPlayers));
              },
              redirect: (BuildContext context, GoRouterState state) {
                final dataForAppView = _appViewListViewModel.getDataForAppView;
                switch(dataForAppView?.getEnumDataForAppView) {
                  case EnumDataForAppView.isLoading:
                    return "/loading";
                  case EnumDataForAppView.exception:
                    return "/exception";
                  case EnumDataForAppView.login:
                    return "/login";
                  case EnumDataForAppView.preSuccess:
                    return "/preSuccess";
                  case EnumDataForAppView.success:
                    return "/topPlayers";
                  default:
                    return "";
                }
              }
          ),
          GoRoute(
            path: '/balance',
            pageBuilder:(BuildContext context, GoRouterState state) {
              return const MaterialPage(
                  key: ValueKey('main'),
                  child: InitializeServiceSystemView(EnumNavigationUtility.balance));
              },
              redirect: (BuildContext context, GoRouterState state) {
                final dataForAppView = _appViewListViewModel.getDataForAppView;
                switch(dataForAppView?.getEnumDataForAppView) {
                  case EnumDataForAppView.isLoading:
                    return "/loading";
                  case EnumDataForAppView.exception:
                    return "/exception";
                  case EnumDataForAppView.login:
                    return "/login";
                  case EnumDataForAppView.preSuccess:
                    return "/preSuccess";
                  case EnumDataForAppView.success:
                    return "/balance";
                  default:
                    return "";
                }
              }
          ),
          GoRoute(
            path: '/tournaments',
            pageBuilder:(BuildContext context, GoRouterState state) {
              return const MaterialPage(
                  key: ValueKey('main'),
                  child: InitializeServiceSystemView(EnumNavigationUtility.tournaments));
              },
              redirect: (BuildContext context, GoRouterState state) {
                final dataForAppView = _appViewListViewModel.getDataForAppView;
                switch(dataForAppView?.getEnumDataForAppView) {
                  case EnumDataForAppView.isLoading:
                    return "/loading";
                  case EnumDataForAppView.exception:
                    return "/exception";
                  case EnumDataForAppView.login:
                    return "/login";
                  case EnumDataForAppView.preSuccess:
                    return "/preSuccess";
                  case EnumDataForAppView.success:
                    return "/tournaments";
                  default:
                    return "";
                }
              }
          ),
          GoRoute(
            path: '/login',
            pageBuilder:(BuildContext context, GoRouterState state) {
              return const MaterialPage(
                  key: ValueKey('main'),
                  child: InitializeServiceSystemView(EnumNavigationUtility.topPlayers));
              },
              redirect: (BuildContext context, GoRouterState state) {
                final dataForAppView = _appViewListViewModel.getDataForAppView;
                switch(dataForAppView?.getEnumDataForAppView) {
                  case EnumDataForAppView.isLoading:
                    return "/loading";
                  case EnumDataForAppView.exception:
                    return "/exception";
                  case EnumDataForAppView.login:
                    return "/login";
                  case EnumDataForAppView.preSuccess:
                    return "/preSuccess";
                  case EnumDataForAppView.success:
                    return "/topPlayers";
                  default:
                    return "";
                }
              }
          ),
          GoRoute(
            path: '/loading',
            pageBuilder:(BuildContext context, GoRouterState state) {
              return const MaterialPage(
                  child: Scaffold(body: Center(child: CircularProgressIndicator())));
              },
              redirect: (BuildContext context, GoRouterState state) {
                final dataForAppView = _appViewListViewModel.getDataForAppView;
                switch(dataForAppView?.getEnumDataForAppView) {
                  case EnumDataForAppView.isLoading:
                    return "/loading";
                  case EnumDataForAppView.exception:
                    return "/exception";
                  case EnumDataForAppView.login:
                    return "/login";
                  case EnumDataForAppView.preSuccess:
                    return "/preSuccess";
                  case EnumDataForAppView.success:
                    return "/topPlayers";
                  default:
                    return "";
                }
              }
          ),
          GoRoute(
            path: '/exception',
            pageBuilder:(BuildContext context, GoRouterState state) {
              final dataForAppView = _appViewListViewModel.getDataForAppView;
              return MaterialPage(
                  child: Scaffold(body: Center(child: Text("Exception: ${dataForAppView?.exceptionController.getKeyParameterException}"))));
              },
              redirect: (BuildContext context, GoRouterState state) {
                final dataForAppView = _appViewListViewModel.getDataForAppView;
                switch(dataForAppView?.getEnumDataForAppView) {
                  case EnumDataForAppView.isLoading:
                    return "/loading";
                  case EnumDataForAppView.exception:
                    return "/exception";
                  case EnumDataForAppView.login:
                    return "/login";
                  case EnumDataForAppView.preSuccess:
                    return "/preSuccess";
                  case EnumDataForAppView.success:
                    return "/topPlayers";
                  default:
                    return "";
                }
              }
          ),
        ]);
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