import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/initialized_named_stream_state_q_data_for_defined_view/initialized_default_stream_state_q_data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/verified_user_sp_q_shared_preferences_service_view_model/verified_user_sp_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_is_verified_user_by_verified_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_unique_id_by_user.dart';

final class DefinedViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _userQSharedPreferencesServiceViewModelUsingGetNP =
  UserQSharedPreferencesServiceViewModelUsingGetNP();
  final _verifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP =
  VerifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP();
  final _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser();
  final _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser =
  BoolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForDefinedViewQThereIsStreamStateViewModel =
  DataForDefinedViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForDefinedView());

  // NamedUtility

  @override
  void dispose() {
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser.cancelListening();
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser.cancelListening();
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
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser
        .startListening((Result<Bools> resultBools) {
          _dataForDefinedViewQThereIsStreamStateViewModel
              .getDataForDefinedView
              ?.isVerifiedUserByVerifiedUserSP = resultBools.parameter?.isField ?? false;
          _dataForDefinedViewQThereIsStreamStateViewModel
              .notifyStreamDataForDefinedView();
        });
  }

  Future<String> initForDefinedView()
  async {
    final resultUser = await _userQSharedPreferencesServiceViewModelUsingGetNP
        .getUserFromSharedPreferencesServiceNPDS();
    final resultVerifiedUserSP = await _verifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP
        .getVerifiedUserSPFromSharedPreferencesServiceNPDS();
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.exceptionController = resultUser.exceptionController;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.uniqueIdByUser = resultUser.parameter?.uniqueId ?? "";
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isVerifiedUserByVerifiedUserSP = resultVerifiedUserSP.parameter?.isVerifiedUser ?? false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForDefinedView() {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .notifyStreamDataForDefinedView();
  }
}