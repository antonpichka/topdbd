import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/initialized_default_stream_state_q_data_for_main_view/initialized_default_stream_state_q_data_for_main_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_main_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_delete_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_hacked_by_security.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_verified_user_by_verified_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';

@immutable
final class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser();
  final _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  VerifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser();
  final _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress =
  StringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress();
  final _userQSharedPreferencesServiceViewModelUsingDeleteNP =
  UserQSharedPreferencesServiceViewModelUsingDeleteNP();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsHackedBySecurity =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsHackedBySecurity();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForMainViewQThereIsStreamStateViewModel =
  DataForMainViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForMainView());

  @override
  void dispose() {
    _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _dataForMainViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForMainView?> get getStreamDataForMainView => _dataForMainViewQThereIsStreamStateViewModel.getStreamDataForMainView;
  DataForMainView? get getDataForMainView => _dataForMainViewQThereIsStreamStateViewModel.getDataForMainView;

  Future<void> listeningStreamsFirebaseFirestoreService()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
      return;
    }
    await _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "", (Result<VerifiedUser> resultVerifiedUser)
    async {
      if(resultVerifiedUser
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQStartListening(resultVerifiedUser);
        return;
      }
      final getStringWhereIsNotVerifiedUserParameterIsVerifiedUser = resultVerifiedUser
          .parameter
          ?.getStringWhereIsNotVerifiedUserParameterIsVerifiedUser ?? "";
      if(getStringWhereIsNotVerifiedUserParameterIsVerifiedUser.isNotEmpty) {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(getStringWhereIsNotVerifiedUserParameterIsVerifiedUser);
        return;
      }
    });
    await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "",(Result<IPAddressFirestore> resultIPAddressFirestore)
    async {
      if(resultIPAddressFirestore
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondBranchOneQListeningStreamsFirebaseFirestoreServiceQStartListening(resultIPAddressFirestore);
        return;
      }
      final resultStringsForIpByIPAddress = await _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress
          .getStringsFromTempCacheServiceNPDS();
      if(resultStringsForIpByIPAddress
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(resultStringsForIpByIPAddress);
        return;
      }
      final getStringWhereNotEqualsFromIpParameterIp = resultIPAddressFirestore
          .parameter
          ?.getStringWhereNotEqualsFromIpParameterIp(resultStringsForIpByIPAddress.parameter?.field ?? "") ?? "";
      if(getStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
        _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringWhereNotEqualsFromIpParameterIp(getStringWhereNotEqualsFromIpParameterIp);
        return;
      }
    });
  }

  String init() {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForMainView() {
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQStartListening(Result<VerifiedUser> resultVerifiedUser) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultVerifiedUser.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _secondBranchOneQListeningStreamsFirebaseFirestoreServiceQStartListening(Result<IPAddressFirestore> resultIPAddressFirestore) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultIPAddressFirestore.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  void _secondBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForIpByIPAddress) {
    _dataForMainViewQThereIsStreamStateViewModel
        .getDataForMainView
        ?.exceptionController = resultStringsForIpByIPAddress.exceptionController;
    _dataForMainViewQThereIsStreamStateViewModel
        .notifyStreamDataForMainView();
  }

  Future<void> _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringWhereNotEqualsFromIpParameterIp(String getStringWhereNotEqualsFromIpParameterIp)
  async {
    await _userQSharedPreferencesServiceViewModelUsingDeleteNP
        .deleteUserToSharedPreferencesServiceNPDS();
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsHackedBySecurity
        .updateBoolsToTempCacheServiceParameterBoolDS(true);
  }

  Future<void> _firstBranchOneQListeningStreamsFirebaseFirestoreServiceQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(String getStringWhereIsNotVerifiedUserParameterIsVerifiedUser)
  async {
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser
        .updateBoolsToTempCacheServiceParameterBoolDS(false);
  }
}