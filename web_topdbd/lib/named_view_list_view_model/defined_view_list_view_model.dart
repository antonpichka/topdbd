import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/initialized_named_stream_state_q_data_for_defined_view/initialized_default_stream_state_q_data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_creation_time_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';

final class DefinedViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _userQSharedPreferencesServiceViewModelUsingGetNP =
  UserQSharedPreferencesServiceViewModelUsingGetNP();
  final _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForDefinedViewQThereIsStreamStateViewModel =
  DataForDefinedViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForDefinedView());

  // NamedUtility

  @override
  void dispose() {
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser.cancelListening();
    _dataForDefinedViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForDefinedView?> get getStreamDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getStreamDataForDefinedView;
  DataForDefinedView? get getDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getDataForDefinedView;

  void listeningStreamsTempCacheServiceForDefinedView() {
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser
        .startListening((Result<Strings> resultStrings) {
          _dataForDefinedViewQThereIsStreamStateViewModel
              .getDataForDefinedView
              ?.uniqueIdByUser = resultStrings.parameter?.field ?? "";
          _dataForDefinedViewQThereIsStreamStateViewModel
              .notifyStreamDataForDefinedView();
        });
  }

  Future<String> initForDefinedView()
  async {
    final resultUser = await _userQSharedPreferencesServiceViewModelUsingGetNP
        .getUserFromSharedPreferencesServiceNPDS();
    if(resultUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForDefinedViewQGetUserFromSharedPreferencesServiceNPDS(resultUser);
    }
    final getStringWhereIsEmptyParameterUniqueId = resultUser
        .parameter
        ?.getStringWhereIsEmptyParameterUniqueId ?? "";
    if(getStringWhereIsEmptyParameterUniqueId.isNotEmpty) {
      return _firstBranchOneQInitForDefinedViewQGetStringWhereIsEmptyParameterUniqueId(getStringWhereIsEmptyParameterUniqueId);
    }
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUser.parameter?.creationTime ?? DateTime.now());
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.uniqueIdByUser = resultUser.parameter?.uniqueId ?? "";
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isPreSuccess = true;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForDefinedView() {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .notifyStreamDataForDefinedView();
  }

  Future<String> _firstBranchOneQInitForDefinedViewQGetUserFromSharedPreferencesServiceNPDS(Result<User> resultUser)
  async {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.exceptionController = resultUser.exceptionController;
    return resultUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForDefinedViewQGetStringWhereIsEmptyParameterUniqueId(String getStringWhereIsEmptyParameterUniqueId)
  async {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    return getStringWhereIsEmptyParameterUniqueId;
  }
}