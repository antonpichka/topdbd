import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/bottom_sheet_check_list_maniac_perk_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_perks_w_match_balance_vm/data_for_settings_list_maniac_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_perks_w_match_balance_vm/enum_data_for_settings_list_maniac_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_perks_w_match_balance_vm/test_settings_list_maniac_perks_w_match_balance_view_model.dart';

final class SettingsListManiacPerksWMatchBalanceView extends StatefulWidget {
  const SettingsListManiacPerksWMatchBalanceView(Key key) : super(key: key);

  @override
  State<SettingsListManiacPerksWMatchBalanceView> createState() => _SettingsListManiacPerksWMatchBalanceViewState();
}

final class _SettingsListManiacPerksWMatchBalanceViewState extends State<SettingsListManiacPerksWMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsListManiacPerksWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsListManiacPerksWMatchBalanceViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsListManiacPerksWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsListManiacPerksWMatchBalanceViewModel();
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
      case EnumDataForSettingsListManiacPerksWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSettingsListManiacPerksWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsListManiacPerksWMatchBalanceView.success:
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
                    itemCount: dataForNamedParameterNamedStreamWState.getIntWhereLengthLessTwoAndEqualParametersListManiacPerkWMatchBalanceAndListManiacPerk,
                    separatorBuilder: (context,index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context,index) {
                      if(dataForNamedParameterNamedStreamWState.isWhereLengthLessTwoAndEqualParametersListManiacPerkWMatchBalanceAndListManiacPerk()) {
                        return _getWidgetWhereCreateItemBuilderFromTwo(index,dataForNamedParameterNamedStreamWState);
                      }
                      if(index == 0) {
                        return _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(dataForNamedParameterNamedStreamWState);
                      }
                      final newIndex = index-1;
                      if(newIndex >= dataForNamedParameterNamedStreamWState.listManiacPerkWMatchBalance.listModel.length) {
                        return _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(dataForNamedParameterNamedStreamWState);
                      }
                      final itemModel = dataForNamedParameterNamedStreamWState
                          .listManiacPerkWMatchBalance
                          .listModel[newIndex];
                      return _getWidgetWhereItemToListViewFromItemManiacPerkWMatchBalanceParameterViewModel(itemModel);
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
    debugPrint("SettingsListManiacPerksWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereCreateItemBuilderFromTwo(int index, DataForSettingsListManiacPerksWMatchBalanceView dataForNamedParameterNamedStreamWState) {
    if(index >= dataForNamedParameterNamedStreamWState.listManiacPerkWMatchBalance.listModel.length) {
      return _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(dataForNamedParameterNamedStreamWState);
    }
    final itemModel = dataForNamedParameterNamedStreamWState
        .listManiacPerkWMatchBalance
        .listModel[index];
    return _getWidgetWhereItemToListViewFromItemManiacPerkWMatchBalanceParameterViewModel(itemModel);
  }

  Widget _getWidgetWhereItemToListViewFromItemManiacPerkWMatchBalanceParameterViewModel(ManiacPerkWMatchBalance itemManiacPerkWMatchBalance) {
    return SizedBox(
      width: 140,
      child: Stack(
        children: [
          ListTile(
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
                    _viewModel.deleteItemToListView(itemManiacPerkWMatchBalance);
                  }),
            ),
          )
        ],
      ),
    );
  }

  Widget _getWidgetWhereAddingItemToListViewFromOneParameterViewModel(DataForSettingsListManiacPerksWMatchBalanceView dataForNamedParameterNamedStreamWState) {
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
                    BottomSheetCheckListManiacPerkView(
                        dataForNamedParameterNamedStreamWState.getListManiacPerkWhereWithoutElementsOfAnotherListParametersTwo),
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