import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/data_for_verified_user_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/initialized_named_stream_state_q_data_for_verified_user_system_view/initialized_default_stream_state_q_data_for_verified_user_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_verified_user_system_view_q_there_is_stream_state_view_model/data_for_verified_user_system_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_verified_user_by_verified_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';

@immutable
final class VerifiedUserSystemViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  VerifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel =
  DataForVerifiedUserSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForVerifiedUserSystemView());

  @override
  void dispose() {
    _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForVerifiedUserSystemView?> get getStreamDataForVerifiedUserSystemView => _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel.getStreamDataForVerifiedUserSystemView;
  DataForVerifiedUserSystemView? get getDataForVerifiedUserSystemView => _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel.getDataForVerifiedUserSystemView;

  Future<void> listeningStreamsFirebaseFirestoreServiceForVerifiedUserSystemView()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForVerifiedUserSystemViewQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
      return;
    }
    await _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "", (Result<VerifiedUser> resultVerifiedUser) async {
          if(resultVerifiedUser
              .exceptionController
              .isNotEqualsNullParameterException())
          {
            _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForVerifiedUserSystemViewQStartListening(resultVerifiedUser);
            return;
          }
          await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser
              .updateBoolsToTempCacheServiceParameterBoolDS(resultVerifiedUser.parameter?.isVerifiedUser ?? false);
          _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
              .getDataForVerifiedUserSystemView
              ?.isLoading = false;
          _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
              .getDataForVerifiedUserSystemView
              ?.isVerifiedUserByVerifiedUser = resultVerifiedUser.parameter?.isVerifiedUser ?? false;
          _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
              .notifyStreamDataForVerifiedUserSystemView();
        });
  }

  String initForVerifiedUserSystemView() {
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForVerifiedUserSystemView() {
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForVerifiedUserSystemView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForVerifiedUserSystemViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser) {
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForVerifiedUserSystemView
        ?.isLoading = false;
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForVerifiedUserSystemView
        ?.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForVerifiedUserSystemView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceForVerifiedUserSystemViewQStartListening(Result<VerifiedUser> resultVerifiedUser) {
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForVerifiedUserSystemView
        ?.isLoading = false;
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForVerifiedUserSystemView
        ?.exceptionController = resultVerifiedUser.exceptionController;
    _dataForVerifiedUserSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForVerifiedUserSystemView();
  }
}