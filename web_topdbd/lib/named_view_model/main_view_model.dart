import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_delete_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_hacked_by_security.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_verified_user_by_verified_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';

@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>> {
  // OperationResultModel(InNamedWhereNamed)[FromNamed]ParameterNamedService
  // NamedUtility

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

  MainViewModel() : super(DefaultStreamWState(DataForMainView(true)));

  @override
  void dispose() {
    super.dispose();
    _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
  }

  Future<void> listeningStreamsFirebaseFirestoreServiceParametersFour()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
      return;
    }
    await _verifiedUserQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening(resultStringsForUniqueIdByUser.parameter?.field ?? "", (Result<VerifiedUser> resultVerifiedUser)
    async {
      if(resultVerifiedUser
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstQListeningStreamsFirebaseFirestoreServiceQStartListening(resultVerifiedUser);
        return;
      }
      final getStringWhereIsNotVerifiedUserParameterIsVerifiedUser = resultVerifiedUser
          .parameter
          ?.getStringWhereIsNotVerifiedUserParameterIsVerifiedUser ?? "";
      if(getStringWhereIsNotVerifiedUserParameterIsVerifiedUser.isNotEmpty) {
        _firstQListeningStreamsFirebaseFirestoreServiceQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(getStringWhereIsNotVerifiedUserParameterIsVerifiedUser);
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
        _secondQListeningStreamsFirebaseFirestoreServiceQStartListening(resultIPAddressFirestore);
        return;
      }
      final resultStringsForIpByIPAddress = await _stringsQTempCacheServiceViewModelUsingGetNPForIpByIPAddress
          .getStringsFromTempCacheServiceNPDS();
      if(resultStringsForIpByIPAddress
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(resultStringsForIpByIPAddress);
        return;
      }
      final getStringWhereNotEqualsFromIpParameterIp = resultIPAddressFirestore
          .parameter
          ?.getStringWhereNotEqualsFromIpParameterIp(resultStringsForIpByIPAddress.parameter?.field ?? "") ?? "";
      if(getStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
        _firstQListeningStreamsFirebaseFirestoreServiceQGetStringWhereNotEqualsFromIpParameterIp(getStringWhereNotEqualsFromIpParameterIp);
        return;
      }
    });
  }

  @override
  Future<String> init()
  async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void _firstQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser) {
    getDataForNamedParameterNamedStreamWState.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQListeningStreamsFirebaseFirestoreServiceQStartListening(Result<VerifiedUser> resultVerifiedUser) {
    getDataForNamedParameterNamedStreamWState.exceptionController = resultVerifiedUser.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _secondQListeningStreamsFirebaseFirestoreServiceQStartListening(Result<IPAddressFirestore> resultIPAddressFirestore) {
    getDataForNamedParameterNamedStreamWState.exceptionController = resultIPAddressFirestore.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _secondQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForIpByIPAddress) {
    getDataForNamedParameterNamedStreamWState.exceptionController = resultStringsForIpByIPAddress.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<void> _firstQListeningStreamsFirebaseFirestoreServiceQGetStringWhereNotEqualsFromIpParameterIp(String getStringWhereNotEqualsFromIpParameterIp)
  async {
    await _userQSharedPreferencesServiceViewModelUsingDeleteNP
        .deleteUserToSharedPreferencesServiceNPDS();
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsHackedBySecurity
        .updateBoolsToTempCacheServiceParameterBoolDS(true);
  }

  Future<void> _firstQListeningStreamsFirebaseFirestoreServiceQGetStringWhereIsNotVerifiedUserParameterIsVerifiedUser(String getStringWhereIsNotVerifiedUserParameterIsVerifiedUser)
  async {
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUser
        .updateBoolsToTempCacheServiceParameterBoolDS(false);
  }
}