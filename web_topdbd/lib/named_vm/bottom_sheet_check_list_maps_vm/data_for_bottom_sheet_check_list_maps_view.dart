import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/enum_data_for_bottom_sheet_check_list_maps_view.dart';

final class DataForBottomSheetCheckListMapsView extends BaseDataForNamed<EnumDataForBottomSheetCheckListMapsView> {
  final ListMaps listMaps;
  final ListStrings listStringsWListMapsWCheckbox;

  DataForBottomSheetCheckListMapsView(super.isLoading,this.listMaps,this.listStringsWListMapsWCheckbox);

  @override
  EnumDataForBottomSheetCheckListMapsView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForBottomSheetCheckListMapsView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForBottomSheetCheckListMapsView.exception;
    }
    return EnumDataForBottomSheetCheckListMapsView.success;
  }
}