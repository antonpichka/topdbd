import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_survivor_perk_vm/enum_data_for_bottom_sheet_check_list_survivor_perk_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_survivor_perk_vm/test_bottom_sheet_check_list_survivor_perk_view_model.dart';

final class BottomSheetCheckListSurvivorPerkView extends StatefulWidget {
  final ListSurvivorPerk listSurvivorPerk;

  const BottomSheetCheckListSurvivorPerkView(this.listSurvivorPerk);

  @override
  State<BottomSheetCheckListSurvivorPerkView> createState() => _BottomSheetCheckListSurvivorPerkViewState();
}

final class _BottomSheetCheckListSurvivorPerkViewState extends State<BottomSheetCheckListSurvivorPerkView> {
  /// RELEASE CODE
  // late final BottomSheetCheckListSurvivorPerkViewModel _viewModel;
  /// TEST CODE
  late final TestBottomSheetCheckListSurvivorPerkViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = BottomSheetCheckListSurvivorPerkViewModel(widget.listSurvivorPerk);
    /// TEST CODE
    _viewModel = TestBottomSheetCheckListSurvivorPerkViewModel(widget.listSurvivorPerk);
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
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForBottomSheetCheckListSurvivorPerkView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForBottomSheetCheckListSurvivorPerkView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForBottomSheetCheckListSurvivorPerkView.success:
        return Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index) {
                  final itemModel = dataForNamedParameterNamedStreamWState
                      .listSurvivorPerk
                      .listModel[index];
                  final listStringsWListSurvivorPerkWCheckbox = dataForNamedParameterNamedStreamWState.listStringsWListSurvivorPerkWCheckbox;
                  return _getWidgetWhereItemToListViewFromTwoParameterViewModel(itemModel,listStringsWListSurvivorPerkWCheckbox);
                },
                separatorBuilder: (context,index) {
                  if((index+1) > dataForNamedParameterNamedStreamWState.listSurvivorPerk.listModel.length) {
                    return const SizedBox(height: 20,);
                  }
                  return const Divider(height: 2.0,);
                },
                itemCount: dataForNamedParameterNamedStreamWState
                    .listSurvivorPerk
                    .listModel
                    .length
            )
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
    lamm.debugPrint("BottomSheetCheckListSurvivorPerkView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModel(SurvivorPerk survivorPerk,lamm.ListStrings listStringsWListSurvivorPerkWCheckbox) {
    return ListTile(
      leading: Image.asset(
          survivorPerk.perk.imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover),
      title: Text(survivorPerk.perk.name),
      trailing: Checkbox(
          value: survivorPerk
              .perk
              .isWhereEqualsFromListStringsParameterName(listStringsWListSurvivorPerkWCheckbox),
          onChanged: (bool? value) {
            _viewModel.checkItemToListView(value,survivorPerk.perk.name);
          }),
    );
  }
}