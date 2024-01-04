import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/enum_data_for_bottom_sheet_check_list_maps_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/test_bottom_sheet_check_list_maps_view_model.dart';

final class BottomSheetCheckListMapsView extends StatefulWidget {
  final ListMaps listMaps;

  const BottomSheetCheckListMapsView(this.listMaps);

  @override
  State<BottomSheetCheckListMapsView> createState() => _BottomSheetCheckListMapsViewState();
}

final class _BottomSheetCheckListMapsViewState extends State<BottomSheetCheckListMapsView> {
  /// RELEASE CODE
  // late final BottomSheetCheckListMapsViewModel _viewModel;
  /// TEST CODE
  late final TestBottomSheetCheckListMapsViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = BottomSheetCheckListMapsViewModel(widget.listMaps);
    /// TEST CODE
    _viewModel = TestBottomSheetCheckListMapsViewModel(widget.listMaps);
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
      case EnumDataForBottomSheetCheckListMapsView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForBottomSheetCheckListMapsView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForBottomSheetCheckListMapsView.success:
        return Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index) {
                  final itemModel = dataForNamedParameterNamedStreamWState
                      .listMaps
                      .listModel[index];
                  final listStringsWListMapsWCheckbox = dataForNamedParameterNamedStreamWState.listStringsWListMapsWCheckbox;
                  return _getWidgetWhereItemToListViewFromTwoParameterViewModel(itemModel,listStringsWListMapsWCheckbox);
                },
                separatorBuilder: (context,index) {
                  if((index+1) > dataForNamedParameterNamedStreamWState.listMaps.listModel.length) {
                    return const SizedBox(height: 20,);
                  }
                  return const Divider(height: 2.0,);
                },
                itemCount: dataForNamedParameterNamedStreamWState
                    .listMaps
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
    lamm.debugPrint("BottomSheetCheckListMapsView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereItemToListViewFromTwoParameterViewModel(Maps maps,lamm.ListStrings listStringsWListMapsWCheckbox) {
    return ListTile(
      leading: Image.asset(
          maps.imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover),
      title: Text(maps.name),
      trailing: Checkbox(
          value: maps
              .isWhereEqualsFromListStringsParameterName(listStringsWListMapsWCheckbox),
          onChanged: (bool? value) {
            _viewModel.checkItemToListView(value,maps.name);
          }),
    );
  }
}