import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/enum_data_for_bottom_sheet_check_list_maniac_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/test_bottom_sheet_check_list_maniac_view_model.dart';

final class BottomSheetCheckListManiacView extends StatefulWidget {
  final ListManiac listManiac;

  const BottomSheetCheckListManiacView(this.listManiac);

  @override
  State<BottomSheetCheckListManiacView> createState() => _BottomSheetCheckListManiacViewState();
}

final class _BottomSheetCheckListManiacViewState extends State<BottomSheetCheckListManiacView> {
  /// RELEASE CODE
  // late final BottomSheetCheckListManiacViewModel _viewModel;
  /// TEST CODE
  late final TestBottomSheetCheckListManiacViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = BottomSheetCheckListManiacViewModel(widget.listManiac);
    /// TEST CODE
    _viewModel = TestBottomSheetCheckListManiacViewModel(widget.listManiac);
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
      case EnumDataForBottomSheetCheckListManiacView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForBottomSheetCheckListManiacView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForBottomSheetCheckListManiacView.success:
        return Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index) {
                  final itemModel = dataForNamedParameterNamedStreamWState
                      .listManiac
                      .listModel[index];
                  final listStringsWListManiacWCheckbox = dataForNamedParameterNamedStreamWState.listStringsWListManiacWCheckbox;
                  return _getWidgetWhereItemToListViewFromTwoParameterViewModel(itemModel,listStringsWListManiacWCheckbox);
                },
                separatorBuilder: (context,index) {
                  if((index+1) > dataForNamedParameterNamedStreamWState.listManiac.listModel.length) {
                    return const SizedBox(height: 20,);
                  }
                  return const Divider(height: 2.0,);
                },
                itemCount: dataForNamedParameterNamedStreamWState
                    .listManiac
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
    lamm.debugPrint("BottomSheetCheckListManiacView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModel(Maniac maniac,lamm.ListStrings listStringsWListManiacWCheckbox) {
    return ListTile(
      leading: Image.asset(
          maniac.imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover),
      title: Text(maniac.name),
      trailing: Checkbox(
          value: maniac
              .isWhereEqualsFromListStringsParameterName(listStringsWListManiacWCheckbox),
          onChanged: (bool? value) {
            _viewModel.checkItemToListView(value,maniac.name);
          }),
    );
  }
}