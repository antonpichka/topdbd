import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/enum_data_for_un_auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/test_un_auth_navigation_user_view_model.dart';

final class UnAuthNavigationUserView extends StatefulWidget {
  final String usernameByDiscordUser;
  final String suffixUrlWUserWNameRoute;

  const UnAuthNavigationUserView(this.usernameByDiscordUser,this.suffixUrlWUserWNameRoute);

  @override
  State<UnAuthNavigationUserView> createState() => _UnAuthNavigationUserViewState();
}

final class _UnAuthNavigationUserViewState extends State<UnAuthNavigationUserView> with SingleTickerProviderStateMixin {
  /// RELEASE CODE
  // late final UnAuthNavigationUserViewModel _viewModel;
  /// TEST CODE
  late final TestUnAuthNavigationUserViewModel _viewModel;
  late final TabController _tabController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = UnAuthNavigationUserViewModel(widget.usernameByDiscordUser);
    /// TEST CODE
    _viewModel = TestUnAuthNavigationUserViewModel(widget.usernameByDiscordUser);
    _tabController = TabController(
        initialIndex: _getIndexFromSuffixUrlWUserWNameRoute(widget.suffixUrlWUserWNameRoute),
        length: _getListWidgetWhereTabs.length,
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
      case EnumDataForUnAuthNavigationUserView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForUnAuthNavigationUserView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForUnAuthNavigationUserView.success:
        return TabBar(
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            tabs: _getListWidgetWhereTabs,
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
    debugPrint("UnAuthNavigationUserView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  List<Widget> get _getListWidgetWhereTabs {
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
    }
  }
}