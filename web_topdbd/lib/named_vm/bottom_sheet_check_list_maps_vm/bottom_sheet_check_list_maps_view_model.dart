import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/data_for_bottom_sheet_check_list_maps_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/i_bottom_sheet_check_list_maps_view_model.dart';

@immutable
final class BottomSheetCheckListMapsViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListMapsView,
    DefaultStreamWState<DataForBottomSheetCheckListMapsView>> implements IBottomSheetCheckListMapsViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  BottomSheetCheckListMapsViewModel(ListMaps listMaps)
      : super(DefaultStreamWState(DataForBottomSheetCheckListMapsView(true,listMaps,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameByMaps) {
    // TODO: implement checkItemToListView
  }
}