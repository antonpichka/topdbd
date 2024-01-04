import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/bottom_sheet_check_list_maps_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/data_for_settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/enum_data_for_settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/test_settings_list_maps_w_match_balance_view_model.dart';

final class SettingsListMapsWMatchBalanceView extends StatefulWidget {
  const SettingsListMapsWMatchBalanceView(Key key) : super(key: key);

  @override
  State<SettingsListMapsWMatchBalanceView> createState() => _SettingsListMapsWMatchBalanceViewState();
}

final class _SettingsListMapsWMatchBalanceViewState extends State<SettingsListMapsWMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsListMapsWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsListMapsWMatchBalanceViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsListMapsWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsListMapsWMatchBalanceViewModel();
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
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForSettingsListMapsWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSettingsListMapsWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsListMapsWMatchBalanceView.success:
        return Stack(
          children: [
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    controller: _scrollController,
                    itemCount: dataForNamedParameterNamedStreamWState.getIntWhereLengthLessTwoAndEqualParametersListMapsWMatchBalanceAndListMaps,
                    separatorBuilder: (context,index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context,index) {
                      if(dataForNamedParameterNamedStreamWState.isWhereLengthLessTwoAndEqualParametersListMapsWMatchBalanceAndListMaps()) {
                        return _getWidgetWhereCreateItemBuilderFromTwo(index,dataForNamedParameterNamedStreamWState);
                      }
                      if(index == 0) {
                        return _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(dataForNamedParameterNamedStreamWState);
                      }
                      final newIndex = index-1;
                      if(newIndex >= dataForNamedParameterNamedStreamWState.listMapsWMatchBalance.listModel.length) {
                        return _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(dataForNamedParameterNamedStreamWState);
                      }
                      final itemModel = dataForNamedParameterNamedStreamWState
                          .listMapsWMatchBalance
                          .listModel[newIndex];
                      return _getWidgetWhereItemToListViewFromItemMapsWMatchBalanceParameterViewModel(itemModel);
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
    debugPrint("SettingsListMapsWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereCreateItemBuilderFromTwo(int index, DataForSettingsListMapsWMatchBalanceView dataForNamedParameterNamedStreamWState) {
    if(index >= dataForNamedParameterNamedStreamWState.listMapsWMatchBalance.listModel.length) {
      return _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(dataForNamedParameterNamedStreamWState);
    }
    final itemModel = dataForNamedParameterNamedStreamWState
        .listMapsWMatchBalance
        .listModel[index];
    return _getWidgetWhereItemToListViewFromItemMapsWMatchBalanceParameterViewModel(itemModel);
  }

  Widget _getWidgetWhereItemToListViewFromItemMapsWMatchBalanceParameterViewModel(MapsWMatchBalance itemMapsWMatchBalance) {
    return SizedBox(
      width: 140,
      child: Stack(
        children: [
          ListTile(
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
          Positioned.fill(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    _viewModel.deleteItemToListView(itemMapsWMatchBalance);
                  }),
            ),
          )
        ],
      ),
    );
  }

  Widget _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(DataForSettingsListMapsWMatchBalanceView dataForNamedParameterNamedStreamWState) {
    return IconButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        icon: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              isDismissible: false,
              builder: (BuildContext context) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.close),
                          Text("Close"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        _viewModel.closeBottomSheet();
                      },
                    ),
                    ElevatedButton(
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text("Add"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        _viewModel.addItemsBottomSheet();
                      },
                    ),
                    BottomSheetCheckListMapsView(
                        dataForNamedParameterNamedStreamWState.getListMapsWhereWithoutElementsOfAnotherListParametersTwo),
                  ],
                );
              });
        });
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