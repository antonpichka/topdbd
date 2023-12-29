import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/enum_data_for_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/test_list_maniac_w_match_balance_view_model.dart';

final class ListManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<ListManiacWMatchBalanceView> createState() => _ListManiacWMatchBalanceViewState();
}

final class _ListManiacWMatchBalanceViewState extends State<ListManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final ListManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestListManiacWMatchBalanceViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = ListManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestListManiacWMatchBalanceViewModel();
    _scrollController = ScrollController();
    _scrollController.addListener(_listenerWhereScrollControllerParametersTwo);
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenerWhereScrollControllerParametersTwo);
    _scrollController.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForListManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForListManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForListManiacWMatchBalanceView.success:
        return Column(
          children: [
            Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Number of Rounds: ${dataForNamedParameterNamedStreamWState.matchBalance.numberOfRounds}"),
                )),
            Stack(
              children: [
                SizedBox(
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        controller: _scrollController,
                        itemCount: dataForNamedParameterNamedStreamWState
                            .matchBalance
                            .listManiacWMatchBalance
                            .listModel
                            .length,
                        separatorBuilder: (context,index) {
                          return const SizedBox(width: 12,);
                        },
                        itemBuilder: (context,index) {
                          final itemModel = dataForNamedParameterNamedStreamWState
                              .matchBalance
                              .listManiacWMatchBalance
                              .listModel[index];
                          final selectedItemManiacWMatchBalance = dataForNamedParameterNamedStreamWState
                              .selectedItemManiacWMatchBalance;
                          return _getWidgetWhereItemToListViewFromTwoParameterViewModel(itemModel,selectedItemManiacWMatchBalance);
                        }),
                  ),
                ),
                dataForNamedParameterNamedStreamWState.isMaxLeftScroll
                    ? Container()
                    : Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          _scrollController.position.animateTo(_scrollController.position.minScrollExtent,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.ease);
                        }),
                  ),
                ),
                dataForNamedParameterNamedStreamWState.isMaxRightScroll
                    ? Container()
                    : Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: () {
                          _scrollController.position.animateTo(_scrollController.position.maxScrollExtent,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.ease);
                        }),
                  ),
                ),
              ],
            ),
          ],
        );
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("ListManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModel(ManiacWMatchBalance itemManiacWMatchBalance,String selectedItemManiacWMatchBalance) {
    return SizedBox(
      width: 120,
      child: ListTile(
        onTap: () {
          _viewModel.onTapItemToListView(itemManiacWMatchBalance);
        },
        selected: itemManiacWMatchBalance.isWhereEqualsFromNameParameterName(selectedItemManiacWMatchBalance),
        selectedTileColor: Theme.of(context).colorScheme.surfaceVariant,
        title: Column(
          children: [
            Image.asset(
                itemManiacWMatchBalance.getManiacWhereListManiacWReadyDataUtilityParameterName.imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover),
            Flexible(
                child: Tooltip(
                    message: itemManiacWMatchBalance.name,
                    child: Text(itemManiacWMatchBalance.getStringWhereSubstringFromEndParameterName(8))))
          ],
        ),
      ),
    );
  }

  void _listenerWhereScrollControllerParametersTwo() {
    if (!_scrollController.position.atEdge) {
      return;
    }
    if(_scrollController.position.pixels == _scrollController.position.minScrollExtent) {
      _viewModel.setMinScrollExtent();
      return;
    }
    if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      _viewModel.setMaxScrollExtent();
      return;
    }
  }
}