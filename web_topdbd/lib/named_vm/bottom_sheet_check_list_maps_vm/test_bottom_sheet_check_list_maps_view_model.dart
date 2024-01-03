import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_list_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_list_strings_ee_where_w_list_maps_w_checkbox_and_stream_notification_is_possible_ee_from_list_strings_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/data_for_bottom_sheet_check_list_maps_view.dart';
import 'package:web_topdbd/named_vm/bottom_sheet_check_list_maps_vm/i_bottom_sheet_check_list_maps_view_model.dart';

@immutable
final class TestBottomSheetCheckListMapsViewModel extends BaseNamedViewModel<DataForBottomSheetCheckListMapsView,
    DefaultStreamWState<DataForBottomSheetCheckListMapsView>> implements IBottomSheetCheckListMapsViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _updateEEListStringsEEWhereWListMapsWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService =
  UpdateEEListStringsEEWhereWListMapsWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService();

  // NamedUtility

  TestBottomSheetCheckListMapsViewModel(ListMaps listMaps)
      : super(DefaultStreamWState(DataForBottomSheetCheckListMapsView(true,listMaps,ListStrings(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void checkItemToListView(bool? value, String nameByMaps) {
    if(value ?? false) {
      _firstQQCheckItemToListViewQQValue(nameByMaps);
      return;
    }
    final listStringsWListMapsWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListMapsWCheckbox;
    listStringsWListMapsWCheckbox
        .deleteFromUniqueIdByModelParameterListModel(nameByMaps);
    _updateEEListStringsEEWhereWListMapsWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListMapsWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListMapsWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQCheckItemToListViewQQValue(String nameByMaps) {
    final listStringsWListMapsWCheckbox =  getDataForNamedParameterNamedStreamWState.listStringsWListMapsWCheckbox;
    listStringsWListMapsWCheckbox
        .insertFromNewModelParameterListModel(Strings(nameByMaps));
    _updateEEListStringsEEWhereWListMapsWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService
        .updateListStringsWhereWListMapsWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(listStringsWListMapsWCheckbox.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}