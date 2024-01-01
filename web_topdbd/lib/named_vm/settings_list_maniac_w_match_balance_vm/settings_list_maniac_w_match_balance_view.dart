import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/enum_data_for_settings_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/test_settings_list_maniac_w_match_balance_view_model.dart';

final class SettingsListManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<SettingsListManiacWMatchBalanceView> createState() => _SettingsListManiacWMatchBalanceViewState();
}

final class _SettingsListManiacWMatchBalanceViewState extends State<SettingsListManiacWMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsListManiacWMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsListManiacWMatchBalanceViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsListManiacWMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsListManiacWMatchBalanceViewModel();
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
      case EnumDataForSettingsListManiacWMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForSettingsListManiacWMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsListManiacWMatchBalanceView.success:
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
                    itemCount: dataForNamedParameterNamedStreamWState.getIntWhereLengthDefinesEqualsParametersListManiacWMatchBalanceByMatchBalanceAndListManiac,
                    separatorBuilder: (context,index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context,index) {
                      if(index == 0) {
                        return _getWidgetWhereAddingItemToListViewParameterViewModel();
                      }
                      if((index-1) >= dataForNamedParameterNamedStreamWState.listManiacWMatchBalanceByMatchBalance.listModel.length) {
                        return _getWidgetWhereAddingItemToListViewParameterViewModel();
                      }
                      final itemModel = dataForNamedParameterNamedStreamWState
                          .listManiacWMatchBalanceByMatchBalance
                          .listModel[index-1];
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
    debugPrint("SettingsListManiacWMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModel(ManiacWMatchBalance itemManiacWMatchBalance,String selectedItemManiacWMatchBalance) {
    return SizedBox(
      width: 140,
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
                width: 100,
                height: 80,
                fit: BoxFit.cover),
            Flexible(
                child: Tooltip(
                    message: itemManiacWMatchBalance.name,
                    child: Text(
                        itemManiacWMatchBalance.getStringWhereSubstringFromEndParameterName(12),
                        maxLines: 1)))
          ],
        ),
      ),
    );
  }

  Widget _getWidgetWhereAddingItemToListViewParameterViewModel() {
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