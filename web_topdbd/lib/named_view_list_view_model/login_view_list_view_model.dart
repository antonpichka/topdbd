import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/get_unique_id_by_user_and_season_number_by_season_to_stats_utility.dart';
import 'package:common_topdbd/named_utility/ip_to_ip_address_firestore_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/named_utility/registration_country_utility.dart';
import 'package:common_topdbd/named_utility/registration_discord_user_firestore_utility.dart';
import 'package:common_topdbd/named_utility/registration_ip_address_firestore_utility.dart';
import 'package:common_topdbd/named_utility/registration_stats_utility.dart';
import 'package:common_topdbd/named_utility/registration_verified_user_utility.dart';
import 'package:common_topdbd/named_utility/update_username_and_global_name_to_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/initialized_named_stream_state_q_data_for_login_view/initialized_default_stream_state_q_data_for_login_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_login_view_q_there_is_stream_state_view_model/data_for_login_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_asset_bundle_service_view_model/strings_q_asset_bundle_service_view_model/strings_q_asset_bundle_service_view_model_using_get_np_for_terms_of_use.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/about_me_q_firebase_firestore_service_view_model/about_me_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/about_me_q_firebase_firestore_service_view_model/about_me_q_firebase_firestore_service_view_model_using_insert_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/country_q_firebase_firestore_service_view_model/country_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/country_q_firebase_firestore_service_view_model/country_q_firebase_firestore_service_view_model_using_insert_parameter_registration_country_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model_using_insert_parameter_registration_discord_user_firestore_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model_using_update_parameter_update_username_and_global_name_to_discord_user_firestore_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_insert_parameter_registration_ip_address_firestore_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_update_parameter_ip_to_ip_address_firestore_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model_using_insert_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model_using_insert_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model_using_get_np_for_last_season_where_sort_parameter_season_number.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model_using_get_parameter_get_unique_id_by_user_and_season_number_by_season_to_stats_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model_using_insert_parameter_registration_stats_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/user_q_firebase_firestore_service_view_model/user_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/user_q_firebase_firestore_service_view_model/user_q_firebase_firestore_service_view_model_using_insert_parameter_string_for_unique_id.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model/verified_user_q_firebase_firestore_service_view_model_using_insert_parameter_registration_verified_user_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_http_client_service_view_model/discord_user_q_http_client_service_view_model/discord_user_q_http_client_service_view_model_using_get_np_for_discord_auth.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_http_client_service_view_model/ip_address_q_http_client_service_view_model/ip_address_q_http_client_service_view_model_using_get_np_for_jsonip_api.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_update_parameter_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_admin_by_role_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_test_by_role_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_creation_time_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_end_of_season_time_by_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_last_login_time_by_last_login_time_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_start_of_season_time_by_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_matches_lost_by_stats.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_matches_won_by_stats.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_rating_points_by_stats.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_season_number_by_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_code_dbd_by_about_me.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_global_name_by_discord_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_country_by_country.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_username_by_discord_user.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart';

@immutable
final class LoginViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse =
  StringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse();
  final _discordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth =
  DiscordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth();
  final _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId =
  DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId();
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
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry();
  final _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI =
  IPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI();
  final _countryQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationCountryUtility =
  CountryQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationCountryUtility();
  final _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber =
  SeasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber();
  final _statsQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationStatsUtility =
  StatsQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationStatsUtility();
  final _userQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueId =
  UserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueId();
  final _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationDiscordUserFirestoreUtility =
  DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationDiscordUserFirestoreUtility();
  final _verifiedUserQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationVerifiedUserUtility =
  VerifiedUserQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationVerifiedUserUtility();
  final _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser =
  LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser();
  final _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationIPAddressFirestoreUtility =
  IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationIPAddressFirestoreUtility();
  final _aboutMeQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser =
  AboutMeQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser();
  final _roleUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser =
  RoleUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe();
  final _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesWonByStats =
  IntsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesWonByStats();
  final _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesLostByStats =
  IntsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesLostByStats();
  final _intsQTempCacheServiceViewModelUsingUpdateParameterIntForRatingPointsByStats =
  IntsQTempCacheServiceViewModelUsingUpdateParameterIntForRatingPointsByStats();
  final _intsQTempCacheServiceViewModelUsingUpdateParameterIntForSeasonNumberBySeason =
  IntsQTempCacheServiceViewModelUsingUpdateParameterIntForSeasonNumberBySeason();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser();
  final _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsTestByRoleUser =
  BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsTestByRoleUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason();
  final _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility =
  DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility();
  final _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId =
  UserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId();
  final _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  CountryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  RoleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility =
  IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility();
  final _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  AboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason();
  final _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility =
  StatsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility();
  final _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser =
  UserQSharedPreferencesServiceViewModelUsingUpdateParameterUser();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForLoginViewQThereIsStreamStateViewModel =
  DataForLoginViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForLoginView());

  // NamedUtility

  @override
  void dispose() {
    _dataForLoginViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForLoginView?> get getStreamDataForLoginView => _dataForLoginViewQThereIsStreamStateViewModel.getStreamDataForLoginView;
  DataForLoginView? get getDataForLoginView => _dataForLoginViewQThereIsStreamStateViewModel.getDataForLoginView;

  Future<String> initForLoginView()
  async {
    final resultStringsForTermsOfUse = await _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse
        .getStringsFromAssetBundleServiceNPDS();
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.exceptionController = resultStringsForTermsOfUse.exceptionController;
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.termsOfUse = resultStringsForTermsOfUse.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForLoginView() {
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  void checkForLoginView(bool? isCheck) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isCheckAgreeTermsOfUse = isCheck ?? false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
  }

  Future<void> signInWithDiscordForLoginView(Function() callbackSuccess,Function(String messageException) callbackException)
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
      _firstBranchOneQSignInWithDiscordForLoginViewQGetDiscordUserFromHttpClientServiceNPDS(resultDiscordUserForDiscordAuth,callbackSuccess,callbackException);
      return;
    }
    final resultDiscordUserFirestoreForUniqueId = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserForDiscordAuth.parameter?.id ?? "");
    if(resultDiscordUserFirestoreForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId,callbackSuccess,callbackException,resultDiscordUserForDiscordAuth.parameter!.getCloneModel);
      return;
    }
    final getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName = resultDiscordUserForDiscordAuth
        .parameter
        ?.getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultDiscordUserFirestoreForUniqueId.parameter?.username ?? "",resultDiscordUserFirestoreForUniqueId.parameter?.globalName ?? "") ?? "";
    if(getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName.isNotEmpty) {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName,callbackSuccess,callbackException,resultDiscordUserFirestoreForUniqueId.parameter!.getCloneModel);
      return;
    }
    final resultUserForUniqueId = await _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getUserFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId.parameter?.uniqueIdByUser ?? "");
    if(resultUserForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetIPAddressFromHttpClientServiceNPDS(resultIPAddressForJsonipAPI,callbackSuccess,callbackException);
      return;
    }
    final resultCountryForUniqueIdByUser = await _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getCountryFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultCountryForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetCountryFromFirebaseFirestoreServiceParameterStringDS(resultCountryForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final getStringFromNameCountryWhereNotEqualsParameterNameCountry = resultIPAddressForJsonipAPI
        .parameter
        ?.getStringFromNameCountryWhereNotEqualsParameterNameCountry(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "") ?? "";
    if(getStringFromNameCountryWhereNotEqualsParameterNameCountry.isNotEmpty) {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetStringFromNameCountryWhereNotEqualsParameterNameCountry(getStringFromNameCountryWhereNotEqualsParameterNameCountry,callbackSuccess,callbackException);
      return;
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultRoleUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressFirestore = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility
        .updateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(IPToIPAddressFirestoreUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.ip ?? ""));
    if(resultIPAddressFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQUpdateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(resultIPAddressFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultAboutMeForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetSeasonFromFirebaseFirestoreServiceNPDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility
        .getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(GetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility(resultUserForUniqueId.parameter?.uniqueId ?? "",resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(resultStats,callbackSuccess,callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordForLoginViewQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    await _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser
        .updateUserToSharedPreferencesServiceParameterUserDS(resultUserForUniqueId.parameter?.getCloneModel ?? User("",DateTime.now()));
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUserForUniqueId.parameter?.creationTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultLastLoginTimeUserForUniqueIdByUser.parameter?.lastLoginTime ?? DateTime.now());
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId.parameter?.username ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId.parameter?.globalName ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry
        .updateStringsToTempCacheServiceParameterStringDS(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe
        .updateStringsToTempCacheServiceParameterStringDS(resultAboutMeForUniqueIdByUser.parameter?.codeDBD ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress
        .updateStringsToTempCacheServiceParameterStringDS(resultIPAddressForJsonipAPI.parameter?.ip ?? "");
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesWonByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.matchesWon ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesLostByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.matchesLost ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForRatingPointsByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.ratingPoints ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForSeasonNumberBySeason
        .updateIntsToTempCacheServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isAdmin ?? false);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsTestByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isTest ?? false);
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.startOfSeasonTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.endOfSeasonTime ?? DateTime.now());
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackSuccess();
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetDiscordUserFromHttpClientServiceNPDS(Result<DiscordUser> resultDiscordUserForDiscordAuth,Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultDiscordUserForDiscordAuth.exceptionController.getKeyParameterException);
  }

  Future<void> _firstBranchOneQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<DiscordUserFirestore> resultDiscordUserFirestoreForUniqueId,Function() callbackSuccess,Function(String messageException) callbackException, DiscordUser discordUser)
  async {
    if(resultDiscordUserFirestoreForUniqueId
        .exceptionController
        .getKeyParameterException == KeysExceptionUtility.uNKNOWN)
    {
      _dataForLoginViewQThereIsStreamStateViewModel
          .getDataForLoginView
          ?.isLoading = false;
      _dataForLoginViewQThereIsStreamStateViewModel
          .notifyStreamDataForLoginView();
      callbackException(resultDiscordUserFirestoreForUniqueId.exceptionController.getKeyParameterException);
      return;
    }
    final resultUserForUniqueId =  await _userQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueId
        .insertUserToFirebaseFirestoreServiceParameterStringDS(AlgorithmsUtility.getV1ByUuidParameterString);
    if(resultUserForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwoQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId,callbackSuccess,callbackException);
      return;
    }
    final resultDiscordUserFirestore = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationDiscordUserFirestoreUtility
        .insertDiscordUserFirestoreToFirebaseFirestoreServiceParameterRegistrationDiscordUserFirestoreUtilityDS(RegistrationDiscordUserFirestoreUtility(discordUser.id, resultUserForUniqueId.parameter?.uniqueId ?? "", discordUser.username, discordUser.globalName));
    if(resultDiscordUserFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchThreeQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultVerifiedUser =  await _verifiedUserQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationVerifiedUserUtility
        .insertVerifiedUserToFirebaseFirestoreServiceParameterRegistrationVerifiedUserUtilityDS(RegistrationVerifiedUserUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", false));
    if(resultVerifiedUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFourQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultVerifiedUser,callbackSuccess,callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser
        .insertLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFiveQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSixQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultIPAddressForJsonipAPI,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressFirestore = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationIPAddressFirestoreUtility
        .insertIPAddressFirestoreToFirebaseFirestoreServiceParameterRegistrationIPAddressFirestoreUtilityDS(RegistrationIPAddressFirestoreUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.ip ?? ""));
    if(resultIPAddressFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSevenQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultIPAddressFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultCountry = await _countryQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationCountryUtility
        .insertCountryToFirebaseFirestoreServiceParameterRegistrationCountryUtilityDS(RegistrationCountryUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.nameCountry ?? ""));
    if(resultCountry
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchEightQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultCountry,callbackSuccess,callbackException);
      return;
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchNineQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser
        .insertAboutMeToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTenQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultAboutMeForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationStatsUtility
        .insertStatsToFirebaseFirestoreServiceParameterRegistrationStatsUtilityDS(RegistrationStatsUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0, 25));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchElevenQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultStats,callbackSuccess,callbackException);
      return;
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser
        .insertRoleUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwelveQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultRoleUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    await _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser
        .updateUserToSharedPreferencesServiceParameterUserDS(resultUserForUniqueId.parameter?.getCloneModel ?? User("",DateTime.now()));
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUserForUniqueId.parameter?.creationTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultLastLoginTimeUserForUniqueIdByUser.parameter?.lastLoginTime ?? DateTime.now());
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestore.parameter?.username ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestore.parameter?.globalName ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry
        .updateStringsToTempCacheServiceParameterStringDS(resultCountry.parameter?.nameCountry ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe
        .updateStringsToTempCacheServiceParameterStringDS(resultAboutMeForUniqueIdByUser.parameter?.codeDBD ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress
        .updateStringsToTempCacheServiceParameterStringDS(resultIPAddressForJsonipAPI.parameter?.ip ?? "");
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesWonByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.matchesWon ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesLostByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.matchesLost ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForRatingPointsByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.ratingPoints ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForSeasonNumberBySeason
        .updateIntsToTempCacheServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isAdmin ?? false);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsTestByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isTest ?? false);
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.startOfSeasonTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.endOfSeasonTime ?? DateTime.now());
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackSuccess();
  }

  void _firstBranchTwoQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<User> resultUserForUniqueId,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultUserForUniqueId.exceptionController.getKeyParameterException);
  }

  void _firstBranchThreeQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<DiscordUserFirestore> resultDiscordUserFirestore,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultDiscordUserFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchFourQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<VerifiedUser> resultVerifiedUser,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultVerifiedUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchFiveQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchSixQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<IPAddress> resultIPAddressForJsonipAPI,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException);
  }

  void _firstBranchSevenQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<IPAddressFirestore> resultIPAddressFirestore,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultIPAddressFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchEightQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<Country> resultCountry,Function() callbackSuccess,Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultCountry.exceptionController.getKeyParameterException);
  }

  void _firstBranchNineQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchTenQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<AboutMe> resultAboutMeForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchElevenQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<Stats> resultStats, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultStats.exceptionController.getKeyParameterException);
  }

  void _firstBranchTwelveQSignInWithDiscordForLoginViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<RoleUser> resultRoleUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  Future<void> _firstBranchOneQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(String getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName, Function() callbackSuccess, Function(String messageException) callbackException, DiscordUserFirestore discordUserFirestore)
  async {
    final resultDiscordUserFirestore = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility
        .updateDiscordUserFirestoreToFirebaseFirestoreServiceParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtilityDS(UpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility(discordUserFirestore.uniqueId, discordUserFirestore.uniqueIdByUser, discordUserFirestore.username, discordUserFirestore.globalName));
    if(resultDiscordUserFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwoQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultDiscordUserFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultUserForUniqueId = await _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getUserFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestore.parameter?.uniqueIdByUser ?? "");
    if(resultUserForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchThreeQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultUserForUniqueId,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFourQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultIPAddressForJsonipAPI,callbackSuccess,callbackException);
      return;
    }
    final resultCountryForUniqueIdByUser = await _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getCountryFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultCountryForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFiveQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultCountryForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final getStringFromNameCountryWhereNotEqualsParameterNameCountry = resultIPAddressForJsonipAPI
        .parameter
        ?.getStringFromNameCountryWhereNotEqualsParameterNameCountry(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "") ?? "";
    if(getStringFromNameCountryWhereNotEqualsParameterNameCountry.isNotEmpty) {
      _firstBranchSixQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(getStringFromNameCountryWhereNotEqualsParameterNameCountry,callbackSuccess,callbackException);
      return;
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSevenQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultRoleUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressFirestore = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility
        .updateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(IPToIPAddressFirestoreUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.ip ?? ""));
    if(resultIPAddressFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchEightQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultIPAddressFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchNineQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultAboutMeForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTenQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultSeasonForLastSeasonWhereSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility
        .getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(GetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility(resultUserForUniqueId.parameter?.uniqueId ?? "",resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchElevenQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultStats,callbackSuccess,callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwelveQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(resultLastLoginTimeUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    await _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser
        .updateUserToSharedPreferencesServiceParameterUserDS(resultUserForUniqueId.parameter?.getCloneModel ?? User("",DateTime.now()));
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUserForUniqueId.parameter?.creationTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultLastLoginTimeUserForUniqueIdByUser.parameter?.lastLoginTime ?? DateTime.now());
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestore.parameter?.username ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestore.parameter?.globalName ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry
        .updateStringsToTempCacheServiceParameterStringDS(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe
        .updateStringsToTempCacheServiceParameterStringDS(resultAboutMeForUniqueIdByUser.parameter?.codeDBD ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress
        .updateStringsToTempCacheServiceParameterStringDS(resultIPAddressForJsonipAPI.parameter?.ip ?? "");
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesWonByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.matchesWon ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForMatchesLostByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.matchesLost ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForRatingPointsByStats
        .updateIntsToTempCacheServiceParameterIntDS(resultStats.parameter?.ratingPoints ?? 0);
    await _intsQTempCacheServiceViewModelUsingUpdateParameterIntForSeasonNumberBySeason
        .updateIntsToTempCacheServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isAdmin ?? false);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsTestByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isTest ?? false);
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.startOfSeasonTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.endOfSeasonTime ?? DateTime.now());
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackSuccess();
  }

  void _firstBranchTwoQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<DiscordUserFirestore> resultDiscordUserFirestore, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultDiscordUserFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchThreeQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<User> resultUserForUniqueId, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultUserForUniqueId.exceptionController.getKeyParameterException);
  }

  void _firstBranchFourQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<IPAddress> resultIPAddressForJsonipAPI, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException);
  }

  void _firstBranchFiveQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<Country> resultCountryForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultCountryForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchSixQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(String getStringFromNameCountryWhereNotEqualsParameterNameCountry, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(getStringFromNameCountryWhereNotEqualsParameterNameCountry);
  }

  void _firstBranchSevenQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<RoleUser> resultRoleUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchEightQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<IPAddressFirestore> resultIPAddressFirestore, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultIPAddressFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchNineQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<AboutMe> resultAboutMeForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchTenQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchElevenQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<Stats> resultStats, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultStats.exceptionController.getKeyParameterException);
  }

  void _firstBranchTwelveQSignInWithDiscordForLoginViewQGetStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetUserFromFirebaseFirestoreServiceParameterStringDS(Result<User> resultUserForUniqueId, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultUserForUniqueId.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetIPAddressFromHttpClientServiceNPDS(Result<IPAddress> resultIPAddressForJsonipAPI, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetCountryFromFirebaseFirestoreServiceParameterStringDS(Result<Country> resultCountryForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultCountryForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetStringFromNameCountryWhereNotEqualsParameterNameCountry(String getStringFromNameCountryWhereNotEqualsParameterNameCountry, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(getStringFromNameCountryWhereNotEqualsParameterNameCountry);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(Result<RoleUser> resultRoleUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQUpdateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(Result<IPAddressFirestore> resultIPAddressFirestore, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultIPAddressFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(Result<AboutMe> resultAboutMeForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetSeasonFromFirebaseFirestoreServiceNPDS(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(Result<Stats> resultStats, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultStats.exceptionController.getKeyParameterException);
  }

  void _firstBranchOneQSignInWithDiscordForLoginViewQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    _dataForLoginViewQThereIsStreamStateViewModel
        .getDataForLoginView
        ?.isLoading = false;
    _dataForLoginViewQThereIsStreamStateViewModel
        .notifyStreamDataForLoginView();
    callbackException(resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }
}