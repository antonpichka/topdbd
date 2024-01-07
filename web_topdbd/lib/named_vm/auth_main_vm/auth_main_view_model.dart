import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_ip_by_ip_address_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_unique_id_by_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_uibu_w_ubdu_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_uibu_w_ubdu_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_uibu_w_ubdu_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_uibu_w_ubdu_ee_where_stream_notification_is_possible_ee_from_uibu_w_ubdu_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/data_for_auth_main_view.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/i_auth_main_view_model.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_shared_preferences_service/operation_ee_user_ee_where_named_ee_from_named_ee_parameter_shared_preferences_service/delete_ee_user_ee_parameter_shared_preferences_service.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/operation_ee_ip_address_firestore_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/start_listening_and_cancel_listening_ee_ip_address_firestore_ee_from_unique_id_by_user_and_callback_ee_parameters_firebase_firestore_service_and_stream_subscription.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/operation_ee_verified_user_ee_where_named_ee_from_named_ee_parameters_firebase_firestore_service_and_stream_subscription/start_listening_and_cancel_listening_ee_verified_user_ee_from_unique_id_by_user_and_callback_ee_parameters_firebase_firestore_service_and_stream_subscription.dart';

@immutable
final class AuthMainViewModel extends BaseNamedViewModel<DataForAuthMainView,DefaultStreamWState<DataForAuthMainView>>
    implements IAuthMainViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService =
  GetEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService();
  final _getEEStringsEEWhereIpByIPAddressEEParameterTempCacheService =
  GetEEStringsEEWhereIpByIPAddressEEParameterTempCacheService();
  final _getEEUIBUWUBDUEEParameterTempCacheService =
  GetEEUIBUWUBDUEEParameterTempCacheService();
  final _updateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService =
  UpdateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService();
  final _deleteEEUserEEParameterSharedPreferencesService =
  DeleteEEUserEEParameterSharedPreferencesService();
  final _startListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription();
  final _startListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription();

  // NamedUtility

  AuthMainViewModel() : super(DefaultStreamWState(DataForAuthMainView(true)));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription.cancelListeningVerifiedUserParameterStreamSubscription();
    _startListeningAndCancelListeningEEIPAddressFirestoreEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription.cancelListeningIPAddressFirestoreParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  Future<void> listeningStreamsFirebaseFirestoreService(Function(String) callback) async {
    final getStringsWhereUniqueIdByUserParameterTempCacheService = _getEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService
        .getStringsWhereUniqueIdByUserParameterTempCacheService();
    if(getStringsWhereUniqueIdByUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereUniqueIdByUserParameterTempCacheService(getStringsWhereUniqueIdByUserParameterTempCacheService.exceptionController);
      return;
    }
    await _startListeningAndCancelListeningEEVerifiedUserEEFromUniqueIdByUserAndCallbackEEParametersFirebaseFirestoreServiceAndStreamSubscription
        .startListeningVerifiedUserFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(getStringsWhereUniqueIdByUserParameterTempCacheService.parameter?.field ?? "", (Result<VerifiedUser> resultVerifiedUser)
    async {
      if(resultVerifiedUser
          .exceptionController
          .isWhereNotEqualsNullParameterException())
      {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningVerifiedUserFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(resultVerifiedUser.exceptionController);
        return;
      }
      final isNotVerifiedUser = !(resultVerifiedUser
          .parameter
          ?.isVerifiedUser ?? false);
      if(isNotVerifiedUser) {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQIsNotVerifiedUser(callback);
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
        _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningIPAddressFirestoreFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(resultIPAddressFirestore.exceptionController);
        return;
      }
      final getStringsWhereIpByIPAddressParameterTempCacheService = _getEEStringsEEWhereIpByIPAddressEEParameterTempCacheService
          .getStringsWhereIpByIPAddressParameterTempCacheService();
      if(getStringsWhereIpByIPAddressParameterTempCacheService
          .exceptionController
          .isWhereNotEqualsNullParameterException())
      {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereIpByIPAddressParameterTempCacheService(getStringsWhereIpByIPAddressParameterTempCacheService.exceptionController);
        return;
      }
      final getExceptionInStringWhereNotEqualsFromIpParameterIp = resultIPAddressFirestore
          .parameter
          ?.getExceptionInStringWhereNotEqualsFromIpParameterIp(getStringsWhereIpByIPAddressParameterTempCacheService.parameter?.field ?? "")
          ?? "";
      if(getExceptionInStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
        _firstQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereNotEqualsFromIpParameterIp(callback);
        return;
      }
    });
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereUniqueIdByUserParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningVerifiedUserFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQStartListeningIPAddressFirestoreFromUniqueIdByUserAndCallbackParametersFirebaseFirestoreServiceAndStreamSubscription(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<void> _firstQQListeningStreamsFirebaseFirestoreServiceQQIsNotVerifiedUser(Function(String p1) callback) async {
    final getUIBUWUBDUParameterTempCacheService = _getEEUIBUWUBDUEEParameterTempCacheService
        .getUIBUWUBDUParameterTempCacheService();
    if(getUIBUWUBDUParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstBranchOneQQListeningStreamsFirebaseFirestoreServiceQQIsNotVerifiedUser(getUIBUWUBDUParameterTempCacheService.exceptionController);
      return;
    }
    await _deleteEEUserEEParameterSharedPreferencesService.deleteUserParameterSharedPreferencesService();
    final parameter = getUIBUWUBDUParameterTempCacheService.parameter!;
    final uIBUWUBDUFromNewIsVerifiedUserByVerifiedUserParametersFive = parameter
        .getUIBUWUBDUFromNewIsVerifiedUserByVerifiedUserParametersFive(false);
    _updateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService
        .updateUIBUWUBDUWhereStreamNotificationIsPossibleFromUIBUWUBDUParameterTempCacheService(uIBUWUBDUFromNewIsVerifiedUserByVerifiedUserParametersFive);
    callback(KeysNavigationUtility.notVerifiedUser);
  }

  void _firstQQListeningStreamsFirebaseFirestoreServiceQQGetStringsWhereIpByIPAddressParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<void> _firstQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereNotEqualsFromIpParameterIp(Function(String p1) callback) async {
    final getUIBUWUBDUParameterTempCacheService = _getEEUIBUWUBDUEEParameterTempCacheService
        .getUIBUWUBDUParameterTempCacheService();
    if(getUIBUWUBDUParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstBranchOneQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereNotEqualsFromIpParameterIp(getUIBUWUBDUParameterTempCacheService.exceptionController);
      return;
    }
    await _deleteEEUserEEParameterSharedPreferencesService.deleteUserParameterSharedPreferencesService();
    final parameter = getUIBUWUBDUParameterTempCacheService.parameter!;
    final uIBUWUBDUFromNewIsHackedParametersFive = parameter
        .getUIBUWUBDUFromNewIsHackedParametersFive(true);
    _updateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService
        .updateUIBUWUBDUWhereStreamNotificationIsPossibleFromUIBUWUBDUParameterTempCacheService(uIBUWUBDUFromNewIsHackedParametersFive);
    callback(KeysNavigationUtility.hacked);
  }

  void _firstBranchOneQQListeningStreamsFirebaseFirestoreServiceQQIsNotVerifiedUser(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstBranchOneQQListeningStreamsFirebaseFirestoreServiceQQGetExceptionInStringWhereNotEqualsFromIpParameterIp(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}