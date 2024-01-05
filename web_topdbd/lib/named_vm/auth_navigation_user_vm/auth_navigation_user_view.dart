import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_navigation_user_vm/enum_data_for_auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_user_vm/test_auth_navigation_user_view_model.dart';

final class AuthNavigationUserView extends StatefulWidget {
  final String usernameByDiscordUser;
  final bool isAuthMyUser;
  final String suffixUrlWUserWNameRoute;

  const AuthNavigationUserView(Key key,this.usernameByDiscordUser,this.isAuthMyUser, this.suffixUrlWUserWNameRoute) : super(key: key);

  @override
  State<AuthNavigationUserView> createState() => _AuthNavigationUserViewState();
}

final class _AuthNavigationUserViewState extends State<AuthNavigationUserView> with SingleTickerProviderStateMixin {
  /// RELEASE CODE
  // late final AuthNavigationUserViewModel _viewModel;
  /// TEST CODE
  late final TestAuthNavigationUserViewModel _viewModel;
  late final TabController _tabController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AuthNavigationUserViewModel(widget.usernameByDiscordUser,widget.isAuthMyUser);
    /// TEST CODE
    _viewModel = TestAuthNavigationUserViewModel(widget.usernameByDiscordUser,widget.isAuthMyUser);
    _tabController = TabController(
        initialIndex: _getIndexFromSuffixUrlWUserWNameRoute(widget.suffixUrlWUserWNameRoute),
        length: widget.isAuthMyUser
            ? _getListWidgetWhereTabsAndIsAuthMyUser.length
            : _getListWidgetWhereTabsAndIsNotAuthMyUser.length,
        vsync: this);
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAuthNavigationUserView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForAuthNavigationUserView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForAuthNavigationUserView.success:
        return TabBar(
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.center,
          tabs: dataForNamedParameterNamedStreamWState.isAuthMyUser
              ? _getListWidgetWhereTabsAndIsAuthMyUser
              : _getListWidgetWhereTabsAndIsNotAuthMyUser,
          onTap: (int index) {
            _goWhereNavigationFromIndexWListWidgetParameterViewModel(index);
          });
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("AuthNavigationUserView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  List<Widget> get _getListWidgetWhereTabsAndIsAuthMyUser {
    return [
      const Tab(
        text: "Info",
        icon: Icon(Icons.info_outline),
      ),
      const Tab(
        text: "Stats",
        icon: Icon(Icons.query_stats),
      ),
      const Tab(
        text: "Matches",
        icon: Icon(Icons.videogame_asset_outlined),
      ),
      const Tab(
        text: "Settings",
        icon: Icon(Icons.lock),
      )
    ];
  }

  List<Widget> get _getListWidgetWhereTabsAndIsNotAuthMyUser {
    return [
      const Tab(
        text: "Info",
        icon: Icon(Icons.info_outline),
      ),
      const Tab(
        text: "Stats",
        icon: Icon(Icons.query_stats),
      ),
      const Tab(
        text: "Matches",
        icon: Icon(Icons.videogame_asset_outlined),
      )
    ];
  }

  int _getIndexFromSuffixUrlWUserWNameRoute(String suffixUrlWUserWNameRoute) {
    switch(suffixUrlWUserWNameRoute) {
      case "stats":
        return 1;
      case "matches":
        return 2;
      case "settings":
        return 3;
      default:
        return 0;
    }
  }

  void _goWhereNavigationFromIndexWListWidgetParameterViewModel(int indexWListWidget) {
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(indexWListWidget) {
      case 0:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.getUnAuthNavigationUserViewQQUserQQIdFromId(dataForNamedParameterNamedStreamWState.usernameByDiscordUser));
        break;
      case 1:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.getUnAuthNavigationUserViewQQUserQQIdQQStatsFromId(dataForNamedParameterNamedStreamWState.usernameByDiscordUser));
        break;
      case 2:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.getUnAuthNavigationUserViewQQUserQQIdQQMatchesFromId(dataForNamedParameterNamedStreamWState.usernameByDiscordUser));
        break;
      case 3:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.getAuthNavigationUserViewQQUserQQIdQQSettingsFromId(dataForNamedParameterNamedStreamWState.usernameByDiscordUser));
        break;
    }
  }
}