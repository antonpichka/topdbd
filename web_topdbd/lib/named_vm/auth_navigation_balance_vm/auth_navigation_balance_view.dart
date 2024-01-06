import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_navigation_balance_vm/enum_data_for_auth_navigation_balance_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_balance_vm/test_auth_navigation_balance_view_model.dart';

final class AuthNavigationBalanceView extends StatefulWidget {
  final bool isAdminByRoleUser;
  final String suffixUrlWBalanceWNameRoute;

  const AuthNavigationBalanceView(Key key,this.isAdminByRoleUser,this.suffixUrlWBalanceWNameRoute) : super(key: key);

  @override
  State<AuthNavigationBalanceView> createState() => _AuthNavigationBalanceViewState();
}

final class _AuthNavigationBalanceViewState extends State<AuthNavigationBalanceView> with SingleTickerProviderStateMixin {
  /// RELEASE CODE
  // late final AuthNavigationBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestAuthNavigationBalanceViewModel _viewModel;
  late final TabController _tabController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AuthNavigationBalanceViewModel(widget.isAdminByRoleUser);
    /// TEST CODE
    _viewModel = TestAuthNavigationBalanceViewModel(widget.isAdminByRoleUser);
    _tabController = TabController(
        initialIndex: _getIndexFromSuffixUrlWBalanceWNameRoute(widget.suffixUrlWBalanceWNameRoute),
        length: widget.isAdminByRoleUser
            ? _getListWidgetWhereTabsAndIsAdminByRoleUser.length
            : _getListWidgetWhereTabsAndIsNotAdminByRoleUser.length,
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
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAuthNavigationBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForAuthNavigationBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForAuthNavigationBalanceView.success:
        return TabBar(
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            tabs: dataForNamedParameterNamedStreamWState.isAdminByRoleUser
                ? _getListWidgetWhereTabsAndIsAdminByRoleUser
                : _getListWidgetWhereTabsAndIsNotAdminByRoleUser,
            onTap: (int index) {
              _goWhereNavigationFromIndexWListWidget(index);
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
    debugPrint("AuthNavigationBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  List<Widget> get _getListWidgetWhereTabsAndIsAdminByRoleUser {
    return [
      const Tab(
        text: "Balance",
        icon: Icon(Icons.balance),
      ),
      const Tab(
        text: "Settings",
        icon: Icon(Icons.lock),
      )
    ];
  }

  List<Widget> get _getListWidgetWhereTabsAndIsNotAdminByRoleUser {
    return [
      const Tab(
        text: "Balance",
        icon: Icon(Icons.balance),
      ),
    ];
  }

  int _getIndexFromSuffixUrlWBalanceWNameRoute(String suffixUrlWBalanceWNameRoute) {
    switch(suffixUrlWBalanceWNameRoute) {
      case "settings":
        return 1;
      default:
        return 0;
    }
  }

  void _goWhereNavigationFromIndexWListWidget(int indexWListWidget) {
    switch(indexWListWidget) {
      case 0:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.balance);
        break;
      case 1:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.balanceQQSettings);
        break;
    }
  }
}