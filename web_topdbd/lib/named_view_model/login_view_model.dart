import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:common_topdbd/named_utility/unique_id_by_user_w_season_number_by_season_to_stats_utility.dart';
import 'package:common_topdbd/named_utility/ip_to_ip_address_firestore_utility.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/named_utility/registration_country_utility.dart';
import 'package:common_topdbd/named_utility/registration_discord_user_firestore_utility.dart';
import 'package:common_topdbd/named_utility/registration_ip_address_firestore_utility.dart';
import 'package:common_topdbd/named_utility/registration_stats_utility.dart';
import 'package:common_topdbd/named_utility/registration_verified_user_utility.dart';
import 'package:common_topdbd/named_utility/username_w_global_name_to_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';
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
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model_using_get_list_parameter_int_for_season_number_where_not_equals_and_sort_parameter_season_number.dart';
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
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/season_q_temp_cache_service_view_model/season_q_temp_cache_service_view_model_using_update_list_parameter_list_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_code_dbd_by_about_me.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_global_name_by_discord_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_country_by_country.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_username_by_discord_user.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart';

@immutable
final class LoginViewModel extends BaseNamedViewModel<DataForLoginView,DefaultStreamWState<DataForLoginView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

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
  final _seasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber =
  SeasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber();
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
  final _seasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason =
  SeasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason();

  LoginViewModel() : super(DefaultStreamWState(DataForLoginView(true,"",false)));

  @override
  Future<String> init()
  async {
    final resultStringsForTermsOfUse = await _stringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse
        .getStringsFromAssetBundleServiceNPDS();
    getDataForNamedParameterNamedStreamWState
        .isLoading = false;
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultStringsForTermsOfUse.exceptionController;
    getDataForNamedParameterNamedStreamWState
        .termsOfUse = resultStringsForTermsOfUse.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  void checkParametersZero(bool? isCheck) {
    getDataForNamedParameterNamedStreamWState.isCheckAgreeTermsOfUse = isCheck ?? false;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<void> signInWithDiscordParametersTwelve(Function() callbackSuccess,Function(String messageException) callbackException)
  async {
    if(getDataForNamedParameterNamedStreamWState.isLoading) {
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoading = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
    final resultDiscordUserForDiscordAuth = await _discordUserQHttpClientServiceViewModelUsingGetNPForDiscordAuth
        .getDiscordUserFromHttpClientServiceNPDS();
    if(resultDiscordUserForDiscordAuth
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetDiscordUserFromHttpClientServiceNPDS(resultDiscordUserForDiscordAuth,callbackSuccess,callbackException);
      return;
    }
    final resultDiscordUserFirestoreForUniqueId = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserForDiscordAuth.parameter?.id ?? "");
    if(resultDiscordUserFirestoreForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId,callbackSuccess,callbackException,resultDiscordUserForDiscordAuth.parameter!.getClone);
      return;
    }
    final getStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName = resultDiscordUserForDiscordAuth
        .parameter
        ?.getExceptionInStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultDiscordUserFirestoreForUniqueId.parameter?.username ?? "",resultDiscordUserFirestoreForUniqueId.parameter?.globalName ?? "") ?? "";
    if(getStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName.isNotEmpty) {
      _firstQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(getStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName,callbackSuccess,callbackException,resultDiscordUserFirestoreForUniqueId.parameter!.getCloneModel);
      return;
    }
    final resultUserForUniqueId = await _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getUserFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueId.parameter?.uniqueIdByUser ?? "");
    if(resultUserForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetIPAddressFromHttpClientServiceNPDS(resultIPAddressForJsonipAPI,callbackSuccess,callbackException);
      return;
    }
    final resultCountryForUniqueIdByUser = await _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getCountryFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultCountryForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetCountryFromFirebaseFirestoreServiceParameterStringDS(resultCountryForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final getStringWhereNotEqualsFromNameCountryParameterNameCountry = resultIPAddressForJsonipAPI
        .parameter
        ?.getExceptionInStringWhereNotEqualsFromNameCountryParameterNameCountry(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "") ?? "";
    if(getStringWhereNotEqualsFromNameCountryParameterNameCountry.isNotEmpty) {
      _firstQSignInWithDiscordQGetStringWhereNotEqualsFromNameCountryParameterNameCountry(getStringWhereNotEqualsFromNameCountryParameterNameCountry,callbackSuccess,callbackException);
      return;
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultRoleUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressFirestore = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility
        .updateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(IPToIPAddressFirestoreUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.ip ?? ""));
    if(resultIPAddressFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQUpdateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(resultIPAddressFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultAboutMeForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetSeasonFromFirebaseFirestoreServiceNPDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .getListSeasonFromFirebaseFirestoreServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    if(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetListSeasonFromFirebaseFirestoreServiceParameterIntDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility
        .getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(UniqueIdByUserWSeasonNumberBySeasonToStatsUtility(resultUserForUniqueId.parameter?.uniqueId ?? "",resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(resultStats,callbackSuccess,callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQSignInWithDiscordQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    await _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser
        .updateUserToSharedPreferencesServiceParameterUserDS(resultUserForUniqueId.parameter?.getClone ?? User("",DateTime.now()));
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
    await _seasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason
        .updateListSeasonToTempCacheServiceParameterListSeasonDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.parameter?.getClone ?? ListSeason(List.empty(growable: true)));
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isAdmin ?? false);
    await _boolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsTestByRoleUser
        .updateBoolsToTempCacheServiceParameterBoolDS(resultRoleUserForUniqueIdByUser.parameter?.isTest ?? false);
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.startOfSeasonTime ?? DateTime.now());
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.endOfSeasonTime ?? DateTime.now());
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackSuccess();
  }

  void _firstQSignInWithDiscordQGetDiscordUserFromHttpClientServiceNPDS(Result<DiscordUser> resultDiscordUserForDiscordAuth,Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultDiscordUserForDiscordAuth.exceptionController.getKeyParameterException);
  }

  Future<void> _firstQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<DiscordUserFirestore> resultDiscordUserFirestoreForUniqueId,Function() callbackSuccess,Function(String messageException) callbackException, DiscordUser discordUser)
  async {
    if(resultDiscordUserFirestoreForUniqueId
        .exceptionController
        .getKeyParameterException == KeysExceptionUtility.uNKNOWN)
    {
      getDataForNamedParameterNamedStreamWState.isLoading = false;
      notifyStreamDataForNamedParameterNamedStreamWState();
      callbackException(resultDiscordUserFirestoreForUniqueId.exceptionController.getKeyParameterException);
      return;
    }
    final resultUserForUniqueId =  await _userQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueId
        .insertUserToFirebaseFirestoreServiceParameterStringDS(AlgorithmsUtility.getStringWhereV1ByUuid);
    if(resultUserForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId,callbackSuccess,callbackException);
      return;
    }
    final resultDiscordUserFirestore = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationDiscordUserFirestoreUtility
        .insertDiscordUserFirestoreToFirebaseFirestoreServiceParameterRegistrationDiscordUserFirestoreUtilityDS(RegistrationDiscordUserFirestoreUtility(discordUser.id, resultUserForUniqueId.parameter?.uniqueId ?? "", discordUser.username, discordUser.globalName));
    if(resultDiscordUserFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwoQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultVerifiedUser =  await _verifiedUserQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationVerifiedUserUtility
        .insertVerifiedUserToFirebaseFirestoreServiceParameterRegistrationVerifiedUserUtilityDS(RegistrationVerifiedUserUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", false));
    if(resultVerifiedUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchThreeQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultVerifiedUser,callbackSuccess,callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser
        .insertLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFourQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFiveQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultIPAddressForJsonipAPI,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressFirestore = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationIPAddressFirestoreUtility
        .insertIPAddressFirestoreToFirebaseFirestoreServiceParameterRegistrationIPAddressFirestoreUtilityDS(RegistrationIPAddressFirestoreUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.ip ?? ""));
    if(resultIPAddressFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSixQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultIPAddressFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultCountry = await _countryQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationCountryUtility
        .insertCountryToFirebaseFirestoreServiceParameterRegistrationCountryUtilityDS(RegistrationCountryUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.nameCountry ?? ""));
    if(resultCountry
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSevenQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultCountry,callbackSuccess,callbackException);
      return;
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchEightQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser
        .insertAboutMeToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchNineQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultAboutMeForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingInsertParameterRegistrationStatsUtility
        .insertStatsToFirebaseFirestoreServiceParameterRegistrationStatsUtilityDS(RegistrationStatsUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0, 300));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTenQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultStats,callbackSuccess,callbackException);
      return;
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingInsertParameterStringForUniqueIdByUser
        .insertRoleUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchElevenQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultRoleUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .getListSeasonFromFirebaseFirestoreServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    if(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwelveQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    await _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser
        .updateUserToSharedPreferencesServiceParameterUserDS(resultUserForUniqueId.parameter?.getClone ?? User("",DateTime.now()));
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
    await _seasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason
        .updateListSeasonToTempCacheServiceParameterListSeasonDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.parameter?.getClone ?? ListSeason(List.empty(growable: true)));
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackSuccess();
  }

  void _firstBranchOneQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<User> resultUserForUniqueId,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultUserForUniqueId.exceptionController.getKeyParameterException);
  }

  void _firstBranchTwoQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<DiscordUserFirestore> resultDiscordUserFirestore,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultDiscordUserFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchThreeQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<VerifiedUser> resultVerifiedUser,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultVerifiedUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchFourQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchFiveQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<IPAddress> resultIPAddressForJsonipAPI,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException);
  }

  void _firstBranchSixQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<IPAddressFirestore> resultIPAddressFirestore,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultIPAddressFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchSevenQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<Country> resultCountry,Function() callbackSuccess,Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultCountry.exceptionController.getKeyParameterException);
  }

  void _firstBranchEightQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchNineQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<AboutMe> resultAboutMeForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchTenQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<Stats> resultStats, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultStats.exceptionController.getKeyParameterException);
  }

  void _firstBranchElevenQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<RoleUser> resultRoleUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  Future<void> _firstQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(String getStringFromUsernameAndGlobalNameWhereNotEqualsParametersUsernameAndGlobalName, Function() callbackSuccess, Function(String messageException) callbackException, DiscordUserFirestore discordUserFirestore)
  async {
    final resultDiscordUserFirestore = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility
        .updateDiscordUserFirestoreToFirebaseFirestoreServiceParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtilityDS(UsernameWGlobalNameToDiscordUserFirestoreUtility(discordUserFirestore.uniqueId, discordUserFirestore.uniqueIdByUser, discordUserFirestore.username, discordUserFirestore.globalName));
    if(resultDiscordUserFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchOneQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultDiscordUserFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultUserForUniqueId = await _userQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId
        .getUserFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestore.parameter?.uniqueIdByUser ?? "");
    if(resultUserForUniqueId
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwoQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultUserForUniqueId,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchThreeQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultIPAddressForJsonipAPI,callbackSuccess,callbackException);
      return;
    }
    final resultCountryForUniqueIdByUser = await _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getCountryFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultCountryForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchFourQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultCountryForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final getStringWhereNotEqualsFromNameCountryParameterNameCountry = resultIPAddressForJsonipAPI
        .parameter
        ?.getExceptionInStringWhereNotEqualsFromNameCountryParameterNameCountry(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "") ?? "";
    if(getStringWhereNotEqualsFromNameCountryParameterNameCountry.isNotEmpty) {
      _firstBranchFiveQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(getStringWhereNotEqualsFromNameCountryParameterNameCountry,callbackSuccess,callbackException);
      return;
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSixQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultRoleUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultIPAddressFirestore = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterIPToIPAddressFirestoreUtility
        .updateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(IPToIPAddressFirestoreUtility(resultUserForUniqueId.parameter?.uniqueId ?? "", resultIPAddressForJsonipAPI.parameter?.ip ?? ""));
    if(resultIPAddressFirestore
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchSevenQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultIPAddressFirestore,callbackSuccess,callbackException);
      return;
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchEightQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultAboutMeForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchNineQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultSeasonForLastSeasonWhereSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility
        .getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(UniqueIdByUserWSeasonNumberBySeasonToStatsUtility(resultUserForUniqueId.parameter?.uniqueId ?? "",resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTenQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultStats,callbackSuccess,callbackException);
      return;
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUserForUniqueId.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchElevenQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultLastLoginTimeUserForUniqueIdByUser,callbackSuccess,callbackException);
      return;
    }
    final resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .getListSeasonFromFirebaseFirestoreServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    if(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstBranchTwelveQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber,callbackSuccess,callbackException);
      return;
    }
    await _userQSharedPreferencesServiceViewModelUsingUpdateParameterUser
        .updateUserToSharedPreferencesServiceParameterUserDS(resultUserForUniqueId.parameter?.getClone ?? User("",DateTime.now()));
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
    await _seasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason
        .updateListSeasonToTempCacheServiceParameterListSeasonDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.parameter?.getClone ?? ListSeason(List.empty(growable: true)));
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackSuccess();
  }

  void _firstBranchOneQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<DiscordUserFirestore> resultDiscordUserFirestore, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultDiscordUserFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchTwoQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<User> resultUserForUniqueId, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultUserForUniqueId.exceptionController.getKeyParameterException);
  }

  void _firstBranchThreeQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<IPAddress> resultIPAddressForJsonipAPI, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException);
  }

  void _firstBranchFourQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<Country> resultCountryForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultCountryForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchFiveQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(String getStringFromNameCountryWhereNotEqualsParameterNameCountry, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(getStringFromNameCountryWhereNotEqualsParameterNameCountry);
  }

  void _firstBranchSixQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<RoleUser> resultRoleUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchSevenQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<IPAddressFirestore> resultIPAddressFirestore, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultIPAddressFirestore.exceptionController.getKeyParameterException);
  }

  void _firstBranchEightQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<AboutMe> resultAboutMeForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstBranchNineQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchTenQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<Stats> resultStats, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultStats.exceptionController.getKeyParameterException);
  }

  void _firstBranchElevenQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetUserFromFirebaseFirestoreServiceParameterStringDS(Result<User> resultUserForUniqueId, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultUserForUniqueId.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetIPAddressFromHttpClientServiceNPDS(Result<IPAddress> resultIPAddressForJsonipAPI, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetCountryFromFirebaseFirestoreServiceParameterStringDS(Result<Country> resultCountryForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultCountryForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetStringWhereNotEqualsFromNameCountryParameterNameCountry(String getStringFromNameCountryWhereNotEqualsParameterNameCountry, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(getStringFromNameCountryWhereNotEqualsParameterNameCountry);
  }

  void _firstQSignInWithDiscordQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(Result<RoleUser> resultRoleUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQUpdateIPAddressFirestoreToFirebaseFirestoreServiceParameterIPToIPAddressFirestoreUtilityDS(Result<IPAddressFirestore> resultIPAddressFirestore, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultIPAddressFirestore.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(Result<AboutMe> resultAboutMeForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetSeasonFromFirebaseFirestoreServiceNPDS(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(Result<Stats> resultStats, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultStats.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException);
  }

  void _firstQSignInWithDiscordQGetListSeasonFromFirebaseFirestoreServiceParameterIntDS(Result<ListSeason<Season>> resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchTwelveQSignInWithDiscordQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<ListSeason<Season>> resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }

  void _firstBranchTwelveQSignInWithDiscordQGetStringWhereNotEqualsFromUsernameAndGlobalNameParametersUsernameAndGlobalName(Result<ListSeason<Season>> resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber, Function() callbackSuccess, Function(String messageException) callbackException) {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
    callbackException(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.exceptionController.getKeyParameterException);
  }
}