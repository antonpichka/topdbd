import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_list_strings_ee_where_w_list_maniac_w_checkbox_and_stream_notification_is_possible_ee_from_list_strings_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/data_for_bottom_sheet_check_list_maniac_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maniac_vm/i_bottom_sheet_check_list_maniac_view_model.dart';

@immutable
final class TestBottomSheetCheckListManiacViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListManiacView,
    DefaultStreamWState<DataForBottomSheetCheckListManiacView>> implements IBottomSheetCheckListManiacViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _updateEEListStringsEEWhereWListManiacWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService =
  UpdateEEListStringsEEWhereWListManiacWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService();

  // NamedUtility

  TestBottomSheetCheckListManiacViewModel(ListManiac listManiac)
      : super(DefaultStreamWState(DataForBottomSheetCheckListManiacView(true,listManiac,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameByManiac) {
    if(value ?? false) {
      _firstQQCheckItemToListViewQQValue(nameByManiac);
      return;
    }
    final listStringsWListManiacWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListManiacWCheckbox;
    listStringsWListManiacWCheckbox
        .deleteFromUniqueIdByModelParameterListModel(nameByManiac);
    _updateEEListStringsEEWhereWListManiacWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListManiacWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListManiacWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQCheckItemToListViewQQValue(String nameByManiac) {
    final listStringsWListManiacWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListManiacWCheckbox;
    listStringsWListManiacWCheckbox
        .insertFromNewModelParameterListModel(Strings(nameByManiac));
    _updateEEListStringsEEWhereWListManiacWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListManiacWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListManiacWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
