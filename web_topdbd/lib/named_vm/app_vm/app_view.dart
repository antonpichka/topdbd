import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_vm/about_me_user_view.dart';
import 'package:web_topdbd/named_vm/already_logged_view.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';
import 'package:web_topdbd/named_vm/app_vm/test_app_view_model.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/auth_main_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_user_vm/auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/balance_view.dart';
import 'package:web_topdbd/named_vm/home_view.dart';
import 'package:web_topdbd/named_vm/list_matches_user_w_statistics_on_maniacs_user_vm/list_matches_user_w_statistics_on_maniacs_user_view.dart';
import 'package:web_topdbd/named_vm/login_vm/login_view.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/un_auth_main_view.dart';
import 'package:web_topdbd/named_vm/not_found_view.dart';
import 'package:web_topdbd/named_vm/settings_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_w_list_season_stats_user_view.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/terms_of_use_view.dart';
import 'package:web_topdbd/named_vm/top_players_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/un_auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/user_vm/user_view.dart';

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
        themeMode: ThemeMode.dark,
        theme: FlutterThemeUtility.light,
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
        routerConfig: _getRouterConfigParameterAppViewModel);
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

  RouterConfig<RouteMatchList> get _getRouterConfigParameterAppViewModel {
    return GoRouter(
        routes: [],
        errorPageBuilder: (BuildContext context, GoRouterState state) {
          final value = state.pageKey.value;
          _appViewModel.setNameRoute(value);
          final valueFIRST = ResponsiveValue<Widget>(
              context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: _getWidgetWhereThoseWorksFromThree(context,250,18)),
                Condition.equals(name: TABLET, value: _getWidgetWhereThoseWorksFromThree(context,300,24)),
                Condition.equals(name: DESKTOP, value: _getWidgetWhereThoseWorksFromThree(context,400,30)),
              ]
          ).value ?? Container();
          final dataForNamedParameterNamedStreamWState = _appViewModel.getDataForNamedParameterNamedStreamWState;
          switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
            case EnumDataForAppView.isLoading:
              return const MaterialPage(child: Scaffold(body: Center(child: CircularProgressIndicator())));
            case EnumDataForAppView.exception:
              return MaterialPage(child: Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"))));
            case EnumDataForAppView.thoseWorks:
              return MaterialPage(child: valueFIRST);
            case EnumDataForAppView.authMainViewWHome:
              return MaterialPage(child: AuthMainView(HomeView()));
            case EnumDataForAppView.authMainViewWTopPlayers:
              return MaterialPage(child: AuthMainView(TopPlayersView()));
            case EnumDataForAppView.authMainViewWBalance:
              return MaterialPage(child: AuthMainView(BalanceView()));
            case EnumDataForAppView.authMainViewWLogin:
              return MaterialPage(child: AuthMainView(AlreadyLoggedView()));
            case EnumDataForAppView.authMainViewWTermsOfUse:
              return MaterialPage(child: AuthMainView(TermsOfUseView()));
            case EnumDataForAppView.authMainViewWUserWId:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                          AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWUserWIdFIRST:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false),
                          AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWUserWIdWStats:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                          StatsUserWListSeasonStatsUseView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWUserWIdWStatsFIRST:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false),
                          StatsUserWListSeasonStatsUseView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWUserWIdWMatches:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                          ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false),
                          ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWUserWIdWSettings:
              return MaterialPage(
                  child: AuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                          SettingsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.authMainViewWNotFound:
              return MaterialPage(child: AuthMainView(NotFoundView(dataForNamedParameterNamedStreamWState.nameRoute)));
            case EnumDataForAppView.unAuthMainViewWHome:
              return MaterialPage(child: UnAuthMainView(HomeView()));
            case EnumDataForAppView.unAuthMainViewWTopPlayers:
              return MaterialPage(child: UnAuthMainView(TopPlayersView()));
            case EnumDataForAppView.unAuthMainViewWBalance:
              return MaterialPage(child: UnAuthMainView(BalanceView()));
            case EnumDataForAppView.unAuthMainViewWLogin:
              return MaterialPage(child: UnAuthMainView(LoginView()));
            case EnumDataForAppView.unAuthMainViewWTermsOfUse:
              return MaterialPage(child: UnAuthMainView(TermsOfUseView()));
            case EnumDataForAppView.unAuthMainViewWUserWId:
              return MaterialPage(
                  child: UnAuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute),
                          AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.unAuthMainViewWUserWIdWStats:
              return MaterialPage(
                  child: UnAuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute),
                          StatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.unAuthMainViewWUserWIdWMatches:
              return MaterialPage(
                  child: UnAuthMainView(
                      UserView(
                          dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                          UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute),
                          ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute)))
              );
            case EnumDataForAppView.unAuthMainViewWNotFound:
              return MaterialPage(child: UnAuthMainView(NotFoundView(dataForNamedParameterNamedStreamWState.nameRoute)));
          }
        });
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