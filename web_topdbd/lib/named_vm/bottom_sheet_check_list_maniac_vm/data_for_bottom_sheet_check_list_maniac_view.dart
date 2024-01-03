import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/enum_data_for_bottom_sheet_check_list_maniac_view.dart';

final class DataForBottomSheetCheckListManiacView extends BaseDataForNamed<EnumDataForBottomSheetCheckListManiacView> {
  final ListManiac listManiac;
  final ListStrings listStringsWListManiacWCheckbox;

  DataForBottomSheetCheckListManiacView(super.isLoading,this.listManiac,this.listStringsWListManiacWCheckbox);

  @override
  EnumDataForBottomSheetCheckListManiacView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForBottomSheetCheckListManiacView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForBottomSheetCheckListManiacView.exception;
    }
    return EnumDataForBottomSheetCheckListManiacView.success;
  }
}