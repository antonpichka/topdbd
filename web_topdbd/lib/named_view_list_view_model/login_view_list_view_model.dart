import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/named_utility/registration_discord_user_firestore_utility.dart';
import 'package:common_topdbd/named_utility/registration_verified_user_utility.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/initialized_stream_state_data_for_login_view/initialized_stream_state_data_for_login_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_login_view_q_there_is_stream_state_view_model/data_for_login_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_asset_bundle_service_view_model/strings_q_asset_bundle_service_view_model/strings_q_asset_bundle_service_view_model_using_get_np_for_terms_of_use.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model_using_get_parameter_registration_discord_user_firestore_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user_where_registration.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/user_q_firebase_firestore_service_view_model/user_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_where_registration.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model_using_get_parameter_registration_verified_user_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_http_client_service_view_model/discord_user_q_http_client_service_view_model/discord_user_q_http_client_service_view_model_using_get_np_for_discord_auth.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_http_client_service_view_model/ip_address_q_http_client_service_view_model/ip_address_q_http_client_service_view_model_using_get_np_for_jsonip_api.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_verified_user_by_verified_user_sp.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_creation_time_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_last_login_time_by_last_login_time_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_global_name_by_discord_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_country_by_country.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_username_by_discord_user.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart';

final class LoginViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse =
  StringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse();
  final _discordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth =
  DiscordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth();
  final _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId =
  DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId();
  final _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistration =
  UserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistration();
  final _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationDiscordUserFirestoreUtility =
  DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationDiscordUserFirestoreUtility();
  final _verifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationVerifiedUserUtility =
  VerifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationVerifiedUserUtility();
  final _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserWhereRegistration =
  LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserWhereRegistration();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUserSP =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUserSP();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry();
  final _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI =
  IPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForLoginViewQThereIsStreamStateViewModel =
  DataForLoginViewQThereIsStreamStateViewModel(InitializedStreamStateDataForLoginView());

  // NamedUtility

  @override
  void dispose() {
    _dataForLoginViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForLoginView?>? get getStreamDataForLoginView => _dataForLoginViewQThereIsStreamStateViewModel.getStreamDataForLoginView;
  DataForLoginView? get getDataForLoginView => _dataForLoginViewQThereIsStreamStateViewModel.getDataForLoginView;

  Future<String> initForLoginView()
  async {
    final resultStrings = await _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse
        .getStringsFromAssetBundleServiceNPDS();
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.exceptionController = resultStrings.exceptionController;
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.termsOfUse = resultStrings.field;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForLoginView() {
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  void checkForLoginView(bool? isCheck) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isCheckAgreeTermsOfUse = isCheck;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  Future<void> signInWithDiscordForLoginView(Function() callbackSuccess,Function(String? messageException) callbackException)
  async {
    if(_dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading ?? false)
    {
      return;
    }
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = true;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    final resultDiscordUserForDiscordAuth = await _discordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth
        .getDiscordUserFromHttpClientServiceNPDS();
    if(resultDiscordUserForDiscordAuth
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchOneForSignInWithDiscordForLoginViewForGetDiscordUserFromHttpClientServiceNPDS(resultDiscordUserForDiscordAuth.exceptionController,callbackException);
      return;
    }
    final resultDiscordUserFirestoreForUniqueId = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserForDiscordAuth.id ?? "");
    if(resultDiscordUserFirestoreForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchOneForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId.exceptionController,callbackException,resultDiscordUserForDiscordAuth);
      return;
    }
    // equals data resultDiscordUserForDiscordAuth and resultDiscordUserFirestoreForUniqueId
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  void _exceptionFirstBranchOneForSignInWithDiscordForLoginViewForGetDiscordUserFromHttpClientServiceNPDS(ExceptionController exceptionController, Function(String? messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(exceptionController.getKeyParameterException);
  }

  Future<void> _exceptionFirstBranchOneForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(ExceptionController exceptionController, Function(String? messageException) callbackException, DiscordUser discordUser) async {
    if(exceptionController.getKeyParameterException == KeysExceptionUtility.uNKNOWN) {
      _dataForLoginViewQThereIsStreamStateViewModel
          .getDataForLoginView
          ?.isLoading = false;
      _dataForLoginViewQThereIsStreamStateViewModel
          .notifyStreamDataForLoginView();
      callbackException(exceptionController.getKeyParameterException);
      return;
    }
    final resultUserForUniqueIdWhereRegistration =  await _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdWhereRegistration
        .getUserFromFirebaseFirestoreServiceParameterStringDS(AlgorithmsUtility.getV1ByUuidParameterString);
    if(resultUserForUniqueIdWhereRegistration
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchTwoForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueIdWhereRegistration.exceptionController,callbackException);
      return;
    }
    final resultDiscordUserFirestore = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationDiscordUserFirestoreUtility
        .getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterRegistrationDiscordUserFirestoreUtilityDS(RegistrationDiscordUserFirestoreUtility(discordUser.id ?? "", resultUserForUniqueIdWhereRegistration.uniqueId ?? "", discordUser.username ?? "", discordUser.globalName ?? ""));
    if(resultDiscordUserFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchThreeForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestore.exceptionController, callbackException);
      return;
    }
    final resultVerifiedUser =  await _verifiedUserQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationVerifiedUserUtility
        .getVerifiedUserFromFirebaseFirestoreServiceParameterRegistrationVerifiedUserUtilityDS(RegistrationVerifiedUserUtility(resultUserForUniqueIdWhereRegistration.uniqueId ?? "", false));
    if(resultVerifiedUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchFourForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultVerifiedUser.exceptionController, callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUserWhereRegistration = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUserWhereRegistration
        .getLastLoginTimeUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueIdWhereRegistration.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUserWhereRegistration
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _exceptionFirstBranchFiveForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUserWhereRegistration.exceptionController, callbackException);
      return;
    }
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUserForUniqueIdWhereRegistration.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUserForUniqueIdWhereRegistration.creationTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultLastLoginTimeUserForUniqueIdByUserWhereRegistration.lastLoginTime ?? DateTime.now());
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestore.username ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestore.globalName ?? "");
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsVerifiedUserByVerifiedUserSP
        .updateBoolsToTempCacheServiceParameterBoolDS(resultVerifiedUser.isVerifiedUser ?? false);
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  void _exceptionFirstBranchTwoForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(ExceptionController exceptionController,Function(String? messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(exceptionController.getKeyParameterException);
  }

  void _exceptionFirstBranchThreeForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(ExceptionController exceptionController,Function(String? messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(exceptionController.getKeyParameterException);
  }

  void _exceptionFirstBranchFourForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(ExceptionController exceptionController,Function(String? messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(exceptionController.getKeyParameterException);
  }

  void _exceptionFirstBranchFiveForSignInWithDiscordForLoginViewForGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(ExceptionController exceptionController,Function(String? messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(exceptionController.getKeyParameterException);
  }
}