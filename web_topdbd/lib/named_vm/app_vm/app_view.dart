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
            const Breakpoint(start: 0, end: 450, name: MOBILE),
            const Breakpoint(start: 451, end: 800, name: TABLET),
            const Breakpoint(start: 801, end: 1920, name: DESKTOP),
            const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
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
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,const Scaffold(body: Center(child: CircularProgressIndicator())));
            case EnumDataForAppView.exception:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,Scaffold(body: Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"))));
            case EnumDataForAppView.thoseWorks:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,valueFIRST);
            case EnumDataForAppView.authMainViewWHome:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(HomeView()));
            case EnumDataForAppView.authMainViewWTopPlayers:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(TopPlayersView()));
            case EnumDataForAppView.authMainViewWBalance:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(BalanceView()));
            case EnumDataForAppView.authMainViewWLogin:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(AlreadyLoggedView()));
            case EnumDataForAppView.authMainViewWTermsOfUse:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(TermsOfUseView()));
            case EnumDataForAppView.authMainViewWUserWId:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                      AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false),
                      AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWStats:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                      StatsUserWListSeasonStatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWStatsFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false),
                      StatsUserWListSeasonStatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWMatches:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                      ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWMatchesFIRST:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,false),
                      ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWUserWIdWSettings:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      AuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,true),
                      SettingsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.authMainViewWNotFound:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,AuthMainView(NotFoundView(dataForNamedParameterNamedStreamWState.nameRoute)));
            case EnumDataForAppView.unAuthMainViewWHome:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(HomeView()));
            case EnumDataForAppView.unAuthMainViewWTopPlayers:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(TopPlayersView()));
            case EnumDataForAppView.unAuthMainViewWBalance:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(BalanceView()));
            case EnumDataForAppView.unAuthMainViewWLogin:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(LoginView()));
            case EnumDataForAppView.unAuthMainViewWTermsOfUse:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(TermsOfUseView()));
            case EnumDataForAppView.unAuthMainViewWUserWId:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute),
                      AboutMeUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.unAuthMainViewWUserWIdWStats:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute),
                      StatsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.unAuthMainViewWUserWIdWMatches:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(
                  UserView(
                      dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute,
                      UnAuthNavigationUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute),
                      ListMatchesUserWStatisticsOnManiacsUserView(dataForNamedParameterNamedStreamWState.getIdWhereUserParameterNameRoute))
              ));
            case EnumDataForAppView.unAuthMainViewWNotFound:
              return _getMaterialPageWhereMaxWidthBoxWMaxWidthFromContextAndChild(context,UnAuthMainView(NotFoundView(dataForNamedParameterNamedStreamWState.nameRoute)));
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