import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/data_for_bottom_sheet_check_list_maniac_perk_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/i_bottom_sheet_check_list_maniac_perk_view_model.dart';

@immutable
final class BottomSheetCheckListManiacPerkViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListManiacPerkView,
    DefaultStreamWState<DataForBottomSheetCheckListManiacPerkView>> implements IBottomSheetCheckListManiacPerkViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  BottomSheetCheckListManiacPerkViewModel(ListManiacPerk listManiacPerk)
      : super(DefaultStreamWState(DataForBottomSheetCheckListManiacPerkView(true,listManiacPerk,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameByManiacPerk) {
    // TODO: implement checkItemToListView
  }
}