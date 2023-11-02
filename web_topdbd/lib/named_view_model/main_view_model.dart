import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_bools_ee_where_is_hacked_by_security_ee_from_bools_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_bools_ee_where_is_verified_user_by_verified_user_ee_from_bools_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_ip_by_ip_address_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_unique_id_by_user_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_shared_preferences_service/operation_ee_user_ee_where_named_ee_from_named_ee_parameter_shared_preferences_service/delete_ee_user_ee_parameter_shared_preferences_service.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/operation_ee_ip_address_firestore_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/start_listening_and_cancel_listening_ee_ip_address_firestore_ee_from_unique_id_by_user_and_callback_ee_parameters_firebase_firestore_service_and_stream_subscription.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/operation_ee_verified_user_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/start_listening_and_cancel_listening_ee_verified_user_ee_from_unique_id_by_user_and_callback_ee_parameters_firebase_firestore_service_and_stream_subscription.dart';

@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService =
  GetEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService();
  final _getEEStringsEEWhereIpByIPAddressEEParameterTempCacheService =
  GetEEStringsEEWhereIpByIPAddressEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsVerifiedUserByVerifiedUserEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsVerifiedUserByVerifiedUserEEFromBoolsEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsHackedBySecurityEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsHackedBySecurityEEFromBoolsEEParameterTempCacheService();
  final _deleteEEUserEEParameterSharedPreferencesService =
  DeleteEEUserEEParameterSharedPreferencesService();
  final _startListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription();
  final _startListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription();

  // NamedUtility

  MainViewModel() : super(DefaultStreamWState(DataForMainView(true)));

  @override
  void dispose() {
    super.dispose();
    _startListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription.cancelListeningIPAddressFirestoreParameterStreamSubscription();
    _startListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription.cancelListeningVerifiedUserParameterStreamSubscription();
  }

  Future<void> listeningStreamsFirebaseFirestoreService()
  async {
    final getStringsWhereUniqueIdByUserParameterTempCacheService = _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService
        .getStringsWhereUniqueIdByUserParameterTempCacheService();
    if(getStringsWhereUniqueIdByUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereUniqueIdByUserParameterTempCacheService(getStringsWhereUniqueIdByUserParameterTempCacheService);
      return;
    }
    await _startListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription
        .startListeningVerifiedUserFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(getStringsWhereUniqueIdByUserParameterTempCacheService.parameter?.field ?? "", (Result<VerifiedUser> resultVerifiedUser)
    async {
      if(resultVerifiedUser
          .exceptionController
          .isWhereNotEqualsNullParameterException())
      {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningVerifiedUserFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(resultVerifiedUser);
        return;
      }
      final getExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser = resultVerifiedUser
          .parameter
          ?.getExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser
          ?? "";
      if(getExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser.isNotEmpty) {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser();
        return;
      }
    });
    await _startListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription
        .startListeningIPAddressFirestoreFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(getStringsWhereUniqueIdByUserParameterTempCacheService.parameter?.field ?? "",(Result<IPAddressFirestore> resultIPAddressFirestore)
    async {
      if(resultIPAddressFirestore
          .exceptionController
          .isWhereNotEqualsNullParameterException())
      {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningIPAddressFirestoreFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(resultIPAddressFirestore);
        return;
      }
      final getStringsWhereIpByIPAddressParameterTempCacheService = _getEEStringsEEWhereIpByIPAddressEEParameterTempCacheService
          .getStringsWhereIpByIPAddressParameterTempCacheService();
      if(getStringsWhereIpByIPAddressParameterTempCacheService
          .exceptionController
          .isWhereNotEqualsNullParameterException())
      {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereIpByIPAddressParameterTempCacheService(getStringsWhereIpByIPAddressParameterTempCacheService);
        return;
      }
      final getExceptionInStringWhereNotEqualsFromIpParameterIp = resultIPAddressFirestore
          .parameter
          ?.getExceptionInStringWhereNotEqualsFromIpParameterIp(getStringsWhereIpByIPAddressParameterTempCacheService.parameter?.field ?? "")
          ?? "";
      if(getExceptionInStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereNotEqualsFromIpParameterIp();
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

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereUniqueIdByUserParameterTempCacheService(Result<Strings> getStringsWhereUniqueIdByUserParameterTempCacheService) {
    getDataForNamedParameterNamedStreamWState.exceptionController = getStringsWhereUniqueIdByUserParameterTempCacheService.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningVerifiedUserFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(Result<VerifiedUser> resultVerifiedUser) {
    getDataForNamedParameterNamedStreamWState.exceptionController = resultVerifiedUser.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningIPAddressFirestoreFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(Result<IPAddressFirestore> resultIPAddressFirestore) {
    getDataForNamedParameterNamedStreamWState.exceptionController = resultIPAddressFirestore.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereIpByIPAddressParameterTempCacheService(Result<Strings> getStringsWhereIpByIPAddressParameterTempCacheService) {
    getDataForNamedParameterNamedStreamWState.exceptionController = getStringsWhereIpByIPAddressParameterTempCacheService.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<void> _firstQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereNotEqualsFromIpParameterIp()
  async {
    await _deleteEEUserEEParameterSharedPreferencesService
        .deleteUserParameterSharedPreferencesService();
    _updateEEBoolsEEWhereIsHackedBySecurityEEFromBoolsEEParameterTempCacheService
        .updateBoolsWhereIsHackedBySecurityFromBoolsParameterTempCacheService(const Bools(true));
  }

  Future<void> _firstQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereUsingIsWNotVerifiedUserWIsVerifiedUser()
  async {
    _updateEEBoolsEEWhereIsVerifiedUserByVerifiedUserEEFromBoolsEEParameterTempCacheService
        .updateBoolsWhereIsVerifiedUserByVerifiedUserFromBoolsParameterTempCacheService(const Bools(false));
  }
}