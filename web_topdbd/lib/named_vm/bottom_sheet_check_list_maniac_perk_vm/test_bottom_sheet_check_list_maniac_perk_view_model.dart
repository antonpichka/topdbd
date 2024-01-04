import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_list_strings_ee_where_w_list_maniac_perk_w_checkbox_and_stream_notification_is_possible_ee_from_list_strings_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/data_for_bottom_sheet_check_list_maniac_perk_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_perk_vm/i_bottom_sheet_check_list_maniac_perk_view_model.dart';

@immutable
final class TestBottomSheetCheckListManiacPerkViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListManiacPerkView,
    DefaultStreamWState<DataForBottomSheetCheckListManiacPerkView>> implements IBottomSheetCheckListManiacPerkViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _updateEEListStringsEEWhereWListManiacPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService =
  UpdateEEListStringsEEWhereWListManiacPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService();

  // NamedUtility

  TestBottomSheetCheckListManiacPerkViewModel(ListManiacPerk listManiacPerk)
      : super(DefaultStreamWState(DataForBottomSheetCheckListManiacPerkView(true,listManiacPerk,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameByManiacPerk) {
    if(value ?? false) {
      _firstQQCheckItemToListViewQQValue(nameByManiacPerk);
      return;
    }
    final listStringsWListManiacPerkWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListManiacPerkWCheckbox;
    listStringsWListManiacPerkWCheckbox
        .deleteFromUniqueIdByModelParameterListModel(nameByManiacPerk);
    _updateEEListStringsEEWhereWListManiacPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListManiacPerkWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListManiacPerkWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQCheckItemToListViewQQValue(String nameByManiacPerk) {
    final listStringsWListManiacPerkWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListManiacPerkWCheckbox;
    listStringsWListManiacPerkWCheckbox
        .insertFromNewModelParameterListModel(Strings(nameByManiacPerk));
    _updateEEListStringsEEWhereWListManiacPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListManiacPerkWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListManiacPerkWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}