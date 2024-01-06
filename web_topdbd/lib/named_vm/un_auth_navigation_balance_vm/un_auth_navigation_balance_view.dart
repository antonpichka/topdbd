import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_balance_vm/enum_data_for_un_auth_navigation_balance_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_balance_vm/test_un_auth_navigation_balance_view_model.dart';

final class UnAuthNavigationBalanceView extends StatefulWidget {
  const UnAuthNavigationBalanceView(Key key) : super(key: key);

  @override
  State<UnAuthNavigationBalanceView> createState() => _UnAuthNavigationBalanceViewState();
}

final class _UnAuthNavigationBalanceViewState extends State<UnAuthNavigationBalanceView> with SingleTickerProviderStateMixin {
  /// RELEASE CODE
  // late final UnAuthNavigationBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestUnAuthNavigationBalanceViewModel _viewModel;
  late final TabController _tabController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = UnAuthNavigationBalanceViewModel();
    /// TEST CODE
    _viewModel = TestUnAuthNavigationBalanceViewModel();
    _tabController = TabController(
        initialIndex: 0,
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
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForUnAuthNavigationBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForUnAuthNavigationBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"),);
      case EnumDataForUnAuthNavigationBalanceView.success:
        return TabBar(
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.center,
            tabs: _getListWidgetWhereTabs,
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
    debugPrint("UnAuthNavigationBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  List<Widget> get _getListWidgetWhereTabs {
    return [
      const Tab(
        text: "Balance",
        icon: Icon(Icons.balance),
      ),
    ];
  }

  void _goWhereNavigationFromIndexWListWidget(int indexWListWidget) {
    switch(indexWListWidget) {
      case 0:
        WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(
            context,
            KeysNavigationUtility.balance);
        break;
    }
  }
}