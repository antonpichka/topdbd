import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/enum_data_for_bottom_sheet_check_list_maniac_perk_view.dart';

final class DataForBottomSheetCheckListManiacPerkView extends BaseDataForNamed<EnumDataForBottomSheetCheckListManiacPerkView> {
  final ListManiacPerk listManiacPerk;
  final ListStrings listStringsWListManiacPerkWCheckbox;

  DataForBottomSheetCheckListManiacPerkView(super.isLoading,this.listManiacPerk,this.listStringsWListManiacPerkWCheckbox);

  @override
  EnumDataForBottomSheetCheckListManiacPerkView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForBottomSheetCheckListManiacPerkView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForBottomSheetCheckListManiacPerkView.exception;
    }
    return EnumDataForBottomSheetCheckListManiacPerkView.success;
  }
}