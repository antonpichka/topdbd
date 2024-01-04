import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_list_strings_ee_where_w_list_survivor_perk_w_checkbox_and_stream_notification_is_possible_ee_from_list_strings_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_survivor_perk_vm/data_for_bottom_sheet_check_list_survivor_perk_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_survivor_perk_vm/i_bottom_sheet_check_list_survivor_perk_view_model.dart';

@immutable
final class TestBottomSheetCheckListSurvivorPerkViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListSurvivorPerkView,
    DefaultStreamWState<DataForBottomSheetCheckListSurvivorPerkView>> implements IBottomSheetCheckListSurvivorPerkViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _updateEEListStringsEEWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService =
  UpdateEEListStringsEEWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService();

  // NamedUtility

  TestBottomSheetCheckListSurvivorPerkViewModel(ListSurvivorPerk listSurvivorPerk)
      : super(DefaultStreamWState(DataForBottomSheetCheckListSurvivorPerkView(true,listSurvivorPerk,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameBySurvivorPerk) {
    if(value ?? false) {
      _firstQQCheckItemToListViewQQValue(nameBySurvivorPerk);
      return;
    }
    final listStringsWListSurvivorPerkWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListSurvivorPerkWCheckbox;
    listStringsWListSurvivorPerkWCheckbox
        .deleteFromUniqueIdByModelParameterListModel(nameBySurvivorPerk);
    _updateEEListStringsEEWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListSurvivorPerkWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQCheckItemToListViewQQValue(String nameBySurvivorPerk) {
    final listStringsWListSurvivorPerkWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListSurvivorPerkWCheckbox;
    listStringsWListSurvivorPerkWCheckbox
        .insertFromNewModelParameterListModel(Strings(nameBySurvivorPerk));
    _updateEEListStringsEEWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListSurvivorPerkWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}