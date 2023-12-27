import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/l10n/l10n.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart';
import 'package:web_topdbd/named_utility/flutter_theme_utility.dart';
import 'package:web_topdbd/named_vm/about_me_user_view.dart';
import 'package:web_topdbd/named_vm/already_logged_view.dart';
import 'package:web_topdbd/named_vm/app_vm/enum_data_for_app_view.dart';
import 'package:web_topdbd/named_vm/app_vm/test_app_view_model.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/auth_main_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_balance_vm/auth_navigation_balance_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_user_vm/auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/balance_vm/balance_view.dart';
import 'package:web_topdbd/named_vm/home_view.dart';
import 'package:web_topdbd/named_vm/list_matches_user_w_statistics_on_maniacs_user_view.dart';
import 'package:web_topdbd/named_vm/login_vm/login_view.dart';
import 'package:web_topdbd/named_vm/not_found_view.dart';
import 'package:web_topdbd/named_vm/search_users_to_list_vm/search_users_to_list_view.dart';
import 'package:web_topdbd/named_vm/settings_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_view.dart';
import 'package:web_topdbd/named_vm/stats_user_w_list_season_stats_user_view.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/terms_of_use_view.dart';
import 'package:web_topdbd/named_vm/top_players_vm/top_players_view.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/un_auth_main_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_balance_vm/un_auth_navigation_balance_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/un_auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/user_vm/user_view.dart';

final class AppView extends StatefulWidget {
  @override
  State<AppView> createState() => _AppViewState();
}

final class _AppViewState extends State<AppView> {
  /// RELEASE CODE
  // late final AppViewModel _viewModel;
  /// TEST CODE
  late final TestAppViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AppViewModel();
    /// TEST CODE
    _viewModel = TestAppViewModel();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: true,
        title: "",
        themeMode: ThemeMode.dark,
        theme: FlutterThemeUtility.light,
        darkTheme: FlutterThemeUtility.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: double.infinity, name: DESKTOP)
          ],
        ),
        routerConfig: _getRouterConfigParameterViewModel);
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    _viewModel.listeningStreamsTempCacheService();
    _viewModel.listeningStreamsFirebaseFirestoreService();
    final result = await _viewModel.init();
    debugPrint("AppView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForAppView();
  }

  RouterConfig<RouteMatchList> get _getRouterConfigParameterViewModel {
    return GoRouter(
        routes: [],
        errorPageBuilder: (BuildContext context, GoRouterState state) {
          final value = state.pageKey.value;
          _viewModel.setNameRoute(value);
          final valueFIRST = ResponsiveValue<Widget>(
              context,
              conditionalValues: [
                Condition.equals(name: MOBILE, value: _getWidgetWhereThoseWorksFromThree(context,250,18)),
                Condition.equals(name: TABLET, value: _getWidgetWhereThoseWorksFromThree(context,300,24)),
                Condition.equals(name: DESKTOP, value: _getWidgetWhereThoseWorksFromThree(context,400,30)),
              ]
          ).value ?? Container();
          final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
          switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
            case EnumDataForAppView.isLoading:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,const Scaffold(body: Center(child: CircularProgressIndicator())));
            case EnumDataForAppView.exception:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"))));
            case EnumDataForAppView.thoseWorks:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,valueFIRST);
            case EnumDataForAppView.authMainViewWHome:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  HomeView()));
            case EnumDataForAppView.authMainViewWTopPlayers:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  TopPlayersView()));
            case EnumDataForAppView.authMainViewWBalance:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  BalanceView(
                      AuthNavigationBalanceView(true,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereBalanceParameterNameRoute),
                      ListWItemManiacWMatchBalanceView())
              ));
            case EnumDataForAppView.authMainViewWBalanceFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  BalanceView(
                      AuthNavigationBalanceView(false,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereBalanceParameterNameRoute),
                      ListWItemManiacWMatchBalanceView())
              ));
            case EnumDataForAppView.authMainViewWBalanceWSettings:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  BalanceView(
                      AuthNavigationBalanceView(true,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereBalanceParameterNameRoute),
                      SettingsBalanceView())
              ));
            case EnumDataForAppView.authMainViewWLogin:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  AlreadyLoggedView()));
            case EnumDataForAppView.authMainViewWTermsOfUse:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  TermsOfUseView()));
            case EnumDataForAppView.authMainViewWSearchPlayers:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  SearchUsersToListView(ValueKey<String>(AlgorithmsUtility.getStringWhereV1ByUuid),dataForNamedParameterNamedStreamWState.getIdWhereSearchPlayersParameterNameRoute)));
            case EnumDataForAppView.authMainViewWUserWId:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWStats:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      StatsUserWListSeasonStatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWStatsFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      StatsUserWListSeasonStatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWMatches:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWSettings:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      SettingsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWNotFound:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(NotFoundView(dataForNamedParameterNamedStreamWState.nameRoute)));
            case EnumDataForAppView.unAuthMainViewWHome:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  HomeView()));
            case EnumDataForAppView.unAuthMainViewWTopPlayers:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  TopPlayersView()));
            case EnumDataForAppView.unAuthMainViewWBalance:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  BalanceView(
                      UnAuthNavigationBalanceView(),
                      ListWItemManiacWMatchBalanceView())
              ));
            case EnumDataForAppView.unAuthMainViewWLogin:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  LoginView()));
            case EnumDataForAppView.unAuthMainViewWTermsOfUse:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  TermsOfUseView()));
            case EnumDataForAppView.unAuthMainViewWSearchPlayers:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  SearchUsersToListView(ValueKey<String>(AlgorithmsUtility.getStringWhereV1ByUuid),dataForNamedParameterNamedStreamWState.getIdWhereSearchPlayersParameterNameRoute)));
            case EnumDataForAppView.unAuthMainViewWUserWId:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.unAuthMainViewWUserWIdWStats:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      StatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.unAuthMainViewWUserWIdWMatches:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,dataForNamedParameterNamedStreamWState.getSuffixUrlWhereUserParameterNameRoute),
                      ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.unAuthMainViewWNotFound:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  NotFoundView(dataForNamedParameterNamedStreamWState.nameRoute)));
          }
        });
  }

  MaterialPage _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(BuildContext context,Widget child) {
    return MaterialPage(
        child: MaxWidthBox(
          maxWidth: 1200,
          background: Container(
              color: Theme.of(context).colorScheme.background,
              child: Image.asset(
                "assets/icon/background.png",
                fit: BoxFit.cover,
                width: double.infinity,)
          ),
          child: child,
        )
    );
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