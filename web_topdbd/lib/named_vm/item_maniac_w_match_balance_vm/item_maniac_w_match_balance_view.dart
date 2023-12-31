import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/data_for_item_maniac_w_match_balance_view.dart';
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
  late final ScrollController _scrollControllerFIRST;
  late final ScrollController _scrollControllerSECOND;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = ItemManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestItemManiacWMatchBalanceViewModel();
    _scrollController = ScrollController();
    _scrollController.addListener(_listenerWhereScrollControllerParametersTwo);
    _scrollControllerFIRST = ScrollController();
    _scrollControllerFIRST.addListener(_listenerWhereScrollControllerFIRSTParametersTwo);
    _scrollControllerSECOND = ScrollController();
    _scrollControllerSECOND.addListener(_listenerWhereScrollControllerSECONDParametersTwo);
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenerWhereScrollControllerParametersTwo);
    _scrollController.dispose();
    _scrollControllerFIRST.removeListener(_listenerWhereScrollControllerFIRSTParametersTwo);
    _scrollControllerFIRST.dispose();
    _scrollControllerSECOND.removeListener(_listenerWhereScrollControllerSECONDParametersTwo);
    _scrollControllerSECOND.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForItemManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForItemManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForItemManiacWMatchBalanceView.noSelectedItemManiacWMatchBalanceView:
        return const Card(child: Center(child: Text("No Selected Maniac")));
      case EnumDataForItemManiacWMatchBalanceView.noListManiacPerkWMatchBalanceAndListSurvivorPerkWMatchBalance:
        return _getWidgetFromThree(
            _getWidgetWhereListViewFromOneParameterOne(dataForNamedParameterNamedStreamWState),
            Container(),
            Container());
      case EnumDataForItemManiacWMatchBalanceView.noListManiacPerkWMatchBalance:
        return _getWidgetFromThree(
            _getWidgetWhereListViewFromOneParameterOne(dataForNamedParameterNamedStreamWState),
            Container(),
            _getWidgetWhereListViewFromOneParameterOneSECOND(dataForNamedParameterNamedStreamWState));
      case EnumDataForItemManiacWMatchBalanceView.noListSurvivorPerkWMatchBalance:
        return _getWidgetFromThree(
            _getWidgetWhereListViewFromOneParameterOne(dataForNamedParameterNamedStreamWState),
            _getWidgetWhereListViewFromOneParameterOneFIRST(dataForNamedParameterNamedStreamWState),
            Container());
      case EnumDataForItemManiacWMatchBalanceView.success:
        return _getWidgetFromThree(
            _getWidgetWhereListViewFromOneParameterOne(dataForNamedParameterNamedStreamWState),
            _getWidgetWhereListViewFromOneParameterOneFIRST(dataForNamedParameterNamedStreamWState),
            _getWidgetWhereListViewFromOneParameterOneSECOND(dataForNamedParameterNamedStreamWState));
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

  Widget _getWidgetFromThree(Widget widgetOne,Widget widgetTwo, Widget widgetThree) {
    return Column(
        children: [
          widgetOne,
          widgetTwo,
          widgetThree
        ]);
  }

  Widget _getWidgetWhereListViewFromOneParameterOne(DataForItemManiacWMatchBalanceView dataForNamedParameterNamedStreamWState) {
    return Card(
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                child: Text(
                  "Maps",
                  style: Theme.of(context).textTheme.displaySmall,),
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
        ],
      ),
    );
  }

  Widget _getWidgetWhereListViewFromOneParameterOneFIRST(DataForItemManiacWMatchBalanceView dataForNamedParameterNamedStreamWState) {
    return Card(
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                child: Wrap(
                  children: [
                    Text(
                      "Maniac Perks",
                      style: Theme.of(context).textTheme.displaySmall,),
                    Tooltip(
                      message: "Required number of picked maniac perks: ${dataForNamedParameterNamedStreamWState
                          .selectedItemManiacWMatchBalance
                          .necessaryLengthPickedManiacPerk}",
                      child: IconButton(
                          onPressed: () {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.info(
                                message: "Required number of picked maniac perks: ${dataForNamedParameterNamedStreamWState
                                    .selectedItemManiacWMatchBalance
                                    .necessaryLengthPickedManiacPerk}",
                              ),
                            );
                          },
                          icon: const Icon(Icons.info_outline)),
                    ),
                  ],
                ),
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
                      controller: _scrollControllerFIRST,
                      itemCount: dataForNamedParameterNamedStreamWState
                          .selectedItemManiacWMatchBalance
                          .listManiacPerkWMatchBalance
                          .listModel
                          .length,
                      separatorBuilder: (context,index) {
                        return const SizedBox(width: 12,);
                      },
                      itemBuilder: (context,index) {
                        final itemModel = dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .listManiacPerkWMatchBalance
                            .listModel[index];
                        return _getWidgetWhereItemToListViewFromOneParameterViewModelFIRST(itemModel);
                      }),
                ),
              ),
              dataForNamedParameterNamedStreamWState.isMaxLeftScrollFIRST
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
                        _scrollControllerFIRST.position.animateTo(_scrollControllerFIRST.position.minScrollExtent,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }),
                ),
              ),
              dataForNamedParameterNamedStreamWState.isMaxRightScrollFIRST
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
                        _scrollControllerFIRST.position.animateTo(_scrollControllerFIRST.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _getWidgetWhereListViewFromOneParameterOneSECOND(DataForItemManiacWMatchBalanceView dataForNamedParameterNamedStreamWState) {
    return Card(
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 16.0),
                child: Wrap(
                  children: [
                    Text(
                      "Survivor Perks",
                      style: Theme.of(context).textTheme.displaySmall,),
                    Tooltip(
                      message: "Required number of picked survivor perks: ${dataForNamedParameterNamedStreamWState
                          .selectedItemManiacWMatchBalance
                          .necessaryLengthPickedSurvivorPerk}",
                      child: IconButton(
                          onPressed: () {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.info(
                                message: "Required number of picked survivor perks: ${dataForNamedParameterNamedStreamWState
                                    .selectedItemManiacWMatchBalance
                                    .necessaryLengthPickedSurvivorPerk}",
                              ),
                            );
                          },
                          icon: const Icon(Icons.info_outline)),
                    ),
                  ],
                ),
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
                      controller: _scrollControllerSECOND,
                      itemCount: dataForNamedParameterNamedStreamWState
                          .selectedItemManiacWMatchBalance
                          .listSurvivorPerkWMatchBalance
                          .listModel
                          .length,
                      separatorBuilder: (context,index) {
                        return const SizedBox(width: 12,);
                      },
                      itemBuilder: (context,index) {
                        final itemModel = dataForNamedParameterNamedStreamWState
                            .selectedItemManiacWMatchBalance
                            .listSurvivorPerkWMatchBalance
                            .listModel[index];
                        return _getWidgetWhereItemToListViewFromOneParameterViewModelSECOND(itemModel);
                      }),
                ),
              ),
              dataForNamedParameterNamedStreamWState.isMaxLeftScrollSECOND
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
                        _scrollControllerSECOND.position.animateTo(_scrollControllerSECOND.position.minScrollExtent,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }),
                ),
              ),
              dataForNamedParameterNamedStreamWState.isMaxRightScrollSECOND
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
                        _scrollControllerSECOND.position.animateTo(_scrollControllerSECOND.position.maxScrollExtent,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
                    child: Text(
                        itemMapsWMatchBalance.getStringWhereSubstringFromEndParameterName(12),
                        maxLines: 1)))
          ],
        ),
      ),
    );
  }

  Widget _getWidgetWhereItemToListViewFromOneParameterViewModelFIRST(ManiacPerkWMatchBalance itemManiacPerkWMatchBalance) {
    return SizedBox(
      width: 140,
      child: ListTile(
        onTap: () {
        },
        title: Column(
          children: [
            Image.asset(
                itemManiacPerkWMatchBalance.getManiacPerkWhereListManiacPerkWReadyDataUtilityParameterName.perk.imagePath,
                width: 100,
                height: 80,
                fit: BoxFit.cover),
            Flexible(
                child: Tooltip(
                    message: itemManiacPerkWMatchBalance.name,
                    child: Text(
                        itemManiacPerkWMatchBalance.getStringWhereSubstringFromEndParameterName(12),
                        maxLines: 1)))
          ],
        ),
      ),
    );
  }

  Widget _getWidgetWhereItemToListViewFromOneParameterViewModelSECOND(SurvivorPerkWMatchBalance itemSurvivorPerkWMatchBalance) {
    return SizedBox(
      width: 140,
      child: ListTile(
        onTap: () {
        },
        title: Column(
          children: [
            Image.asset(
                itemSurvivorPerkWMatchBalance.getSurvivorPerkWhereListSurvivorPerkWReadyDataUtilityParameterName.perk.imagePath,
                width: 100,
                height: 80,
                fit: BoxFit.cover),
            Flexible(
                child: Tooltip(
                    message: itemSurvivorPerkWMatchBalance.name,
                    child: Text(
                      itemSurvivorPerkWMatchBalance.getStringWhereSubstringFromEndParameterName(12),
                      maxLines: 1)))
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

  void _listenerWhereScrollControllerFIRSTParametersTwo() {
    if (!_scrollControllerFIRST.position.atEdge) {
      return;
    }
    if(_scrollControllerFIRST.position.pixels == _scrollControllerFIRST.position.minScrollExtent) {
      _viewModel.setMinScrollExtentFIRST();
      return;
    }
    if(_scrollControllerFIRST.position.pixels == _scrollControllerFIRST.position.maxScrollExtent) {
      _viewModel.setMaxScrollExtentFIRST();
      return;
    }
  }

  void _listenerWhereScrollControllerSECONDParametersTwo() {
    if (!_scrollControllerSECOND.position.atEdge) {
      return;
    }
    if(_scrollControllerSECOND.position.pixels == _scrollControllerSECOND.position.minScrollExtent) {
      _viewModel.setMinScrollExtentSECOND();
      return;
    }
    if(_scrollControllerSECOND.position.pixels == _scrollControllerSECOND.position.maxScrollExtent) {
      _viewModel.setMaxScrollExtentSECOND();
      return;
    }
  }
}