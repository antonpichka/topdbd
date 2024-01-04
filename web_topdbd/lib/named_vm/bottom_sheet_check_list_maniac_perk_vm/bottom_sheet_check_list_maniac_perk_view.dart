import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/enum_data_for_bottom_sheet_check_list_maniac_perk_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/test_bottom_sheet_check_list_maniac_perk_view_model.dart';

final class BottomSheetCheckListManiacPerkView extends StatefulWidget {
  final ListManiacPerk listManiacPerk;

  const BottomSheetCheckListManiacPerkView(this.listManiacPerk);

  @override
  State<BottomSheetCheckListManiacPerkView> createState() => _BottomSheetCheckListManiacPerkViewState();
}

final class _BottomSheetCheckListManiacPerkViewState extends State<BottomSheetCheckListManiacPerkView> {
  /// RELEASE CODE
  // late final BottomSheetCheckListManiacPerkViewModel _viewModel;
  /// TEST CODE
  late final TestBottomSheetCheckListManiacPerkViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = BottomSheetCheckListManiacPerkViewModel(widget.listManiacPerk);
    /// TEST CODE
    _viewModel = TestBottomSheetCheckListManiacPerkViewModel(widget.listManiacPerk);
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
      case EnumDataForBottomSheetCheckListManiacPerkView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForBottomSheetCheckListManiacPerkView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForBottomSheetCheckListManiacPerkView.success:
        return Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index) {
                  final itemModel = dataForNamedParameterNamedStreamWState
                      .listManiacPerk
                      .listModel[index];
                  final listStringsWListManiacPerkWCheckbox = dataForNamedParameterNamedStreamWState.listStringsWListManiacPerkWCheckbox;
                  return _getWidgetWhereItemToListViewFromTwoParameterViewModel(itemModel,listStringsWListManiacPerkWCheckbox);
                },
                separatorBuilder: (context,index) {
                  if((index+1) > dataForNamedParameterNamedStreamWState.listManiacPerk.listModel.length) {
                    return const SizedBox(height: 20,);
                  }
                  return const Divider(height: 2.0,);
                },
                itemCount: dataForNamedParameterNamedStreamWState
                    .listManiacPerk
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
    lamm.debugPrint("BottomSheetCheckListManiacPerkView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModel(ManiacPerk maniacPerk,lamm.ListStrings listStringsWListManiacPerkWCheckbox) {
    return ListTile(
      leading: Image.asset(
          maniacPerk.perk.imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover),
      title: Text(maniacPerk.perk.name),
      trailing: Checkbox(
          value: maniacPerk
              .perk
              .isWhereEqualsFromListStringsParameterName(listStringsWListManiacPerkWCheckbox),
          onChanged: (bool? value) {
            _viewModel.checkItemToListView(value,maniacPerk.perk.name);
          }),
    );
  }
}