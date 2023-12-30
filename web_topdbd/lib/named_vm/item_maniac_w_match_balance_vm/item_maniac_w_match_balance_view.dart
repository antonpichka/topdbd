import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/enum_data_for_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/test_item_maniac_w_match_balance_view_model.dart';

final class ItemManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<ItemManiacWMatchBalanceView> createState() => _ItemManiacWMatchBalanceViewState();
}

final class _ItemManiacWMatchBalanceViewState extends State<ItemManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final ItemManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestItemManiacWMatchBalanceViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = ItemManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestItemManiacWMatchBalanceViewModel();
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
      case EnumDataForItemManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForItemManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForItemManiacWMatchBalanceView.noSelectedItemManiacWMatchBalanceView:
        return const Card(child: Center(child: Text("No Selected Maniac")));
      case EnumDataForItemManiacWMatchBalanceView.success:
        return Card(
          child: Column(
              children: [
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
                                .selectedItemManiacWMatchBalance
                                .listMapsWMatchBalance
                                .listModel
                                .length,
                            separatorBuilder: (context,index) {
                              return const SizedBox(width: 12,);
                            },
                            itemBuilder: (context,index) {
                              final itemModel = dataForNamedParameterNamedStreamWState
                                  .selectedItemManiacWMatchBalance
                                  .listMapsWMatchBalance
                                  .listModel[index];
                              return _getWidgetWhereItemToListViewFromOneParameterViewModel(itemModel);
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
                const Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Required number of picked maniac perks: 1"),
                      )),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Required number of picked survivor perks: 1"),
                      )),
                ),
              ]),
        );
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    _viewModel.listeningTempCacheService();
    final result = await _viewModel.init();
    debugPrint("ItemManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromOneParameterViewModel(MapsWMatchBalance itemMapsWMatchBalance) {
    return SizedBox(
      width: 140,
      child: ListTile(
        onTap: () {
        },
        title: Column(
          children: [
            Image.asset(
                itemMapsWMatchBalance.getMapsWhereListMapsWReadyDataUtilityParameterName.imagePath,
                width: 100,
                height: 80,
                fit: BoxFit.cover),
            Flexible(
                child: Tooltip(
                    message: itemMapsWMatchBalance.name,
                    child: Text(itemMapsWMatchBalance.getStringWhereSubstringFromEndParameterName(12))))
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