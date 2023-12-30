import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/enum_data_for_list_w_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_w_item_maniac_w_match_balance_vm/test_list_w_item_maniac_w_match_balance_view_model.dart';

final class ListWItemManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<ListWItemManiacWMatchBalanceView> createState() => _ListWItemManiacWMatchBalanceViewState();
}

final class _ListWItemManiacWMatchBalanceViewState extends State<ListWItemManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final ListWItemManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestListWItemManiacWMatchBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = ListWItemManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestListWItemManiacWMatchBalanceViewModel();
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
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForListWItemManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForListWItemManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForListWItemManiacWMatchBalanceView.success:
        return Column(
            children: [
              ListManiacWMatchBalanceView(),
              ItemManiacWMatchBalanceView()
            ]);
      default:
        return Container();
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("ListWItemManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}