import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_survivor_perk_vm/enum_data_for_bottom_sheet_check_list_survivor_perk_view.dart';

final class DataForBottomSheetCheckListSurvivorPerkView extends BaseDataForNamed<EnumDataForBottomSheetCheckListSurvivorPerkView> {
  final ListSurvivorPerk listSurvivorPerk;
  final ListStrings listStringsWListSurvivorPerkWCheckbox;

  DataForBottomSheetCheckListSurvivorPerkView(super.isLoading,this.listSurvivorPerk,this.listStringsWListSurvivorPerkWCheckbox);

  @override
  EnumDataForBottomSheetCheckListSurvivorPerkView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForBottomSheetCheckListSurvivorPerkView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForBottomSheetCheckListSurvivorPerkView.exception;
    }
    return EnumDataForBottomSheetCheckListSurvivorPerkView.success;
  }
}