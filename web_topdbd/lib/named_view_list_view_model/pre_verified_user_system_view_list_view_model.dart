import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/named_utility/get_unique_id_by_user_and_season_number_by_season_to_stats_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/data_for_pre_verified_user_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/initialized_named_stream_state_q_data_for_pre_verified_user_system_view/initialized_default_stream_state_q_data_for_pre_verified_user_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_pre_verified_user_system_view_q_there_is_stream_state_view_model/data_for_pre_verified_user_system_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/about_me_q_firebase_firestore_service_view_model/about_me_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/country_q_firebase_firestore_service_view_model/country_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model/discord_user_firestore_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model/ip_address_firestore_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model/last_login_time_user_q_firebase_firestore_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model_using_get_np_for_last_season_where_sort_parameter_season_number.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model_using_get_parameter_get_unique_id_by_user_and_season_number_by_season_to_stats_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_http_client_service_view_model/ip_address_q_http_client_service_view_model/ip_address_q_http_client_service_view_model_using_get_np_for_jsonip_api.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_delete_np.dart';
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
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_code_dbd_by_about_me.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_global_name_by_discord_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_country_by_country.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_username_by_discord_user.dart';

final class PreVerifiedUserSystemViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser();
  final _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI =
  IPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI();
  final _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  CountryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  RoleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  AboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber =
  SeasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber();
  final _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility =
  StatsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility();
  final _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  LastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForCodeDBDByAboutMe();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForIpByIPAddress();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForNameCountryByCountry();
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
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForStartOfSeasonTimeBySeason();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForEndOfSeasonTimeBySeason();
  final _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser =
  IPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser();
  final _userQSharedPreferencesServiceViewModelUsingDeleteNP =
  UserQSharedPreferencesServiceViewModelUsingDeleteNP();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel =
  DataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForPreVerifiedUserSystemView());

  @override
  void dispose() {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForPreVerifiedUserSystemView?> get getStreamDataForPreVerifiedUserSystemView => _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel.getStreamDataForPreVerifiedUserSystemView;
  DataForPreVerifiedUserSystemView? get getDataForPreVerifiedUserSystemView => _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel.getDataForPreVerifiedUserSystemView;

  Future<String> initForPreVerifiedUserSystemView()
  async {
    final resultStringsForUniqueIdByUser = await _stringsQTempCacheServiceViewModelUsingGetNPForUniqueIdByUser
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStringsFromTempCacheServiceNPDS(resultStringsForUniqueIdByUser);
    }
    final resultDiscordUserFirestoreForUniqueIdByUser = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultStringsForUniqueIdByUser.parameter?.field ?? "");
    if(resultDiscordUserFirestoreForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueIdByUser);
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetIPAddressFromHttpClientServiceNPDS(resultIPAddressForJsonipAPI);
    }
    final resultIPAddressFirestoreForUniqueIdByUser = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultStringsForUniqueIdByUser.parameter?.field ?? "");
    if(resultIPAddressFirestoreForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultIPAddressFirestoreForUniqueIdByUser);
    }
    final getStringWhereNotEqualsFromIpParameterIp = resultIPAddressForJsonipAPI
        .parameter
        ?.getStringWhereNotEqualsFromIpParameterIp(resultIPAddressFirestoreForUniqueIdByUser.parameter?.ip ?? "") ?? "";
    if(getStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStringWhereNotEqualsFromIpParameterIp(getStringWhereNotEqualsFromIpParameterIp);
    }
    final resultCountryForUniqueIdByUser = await _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getCountryFromFirebaseFirestoreServiceParameterStringDS(resultStringsForUniqueIdByUser.parameter?.field ?? "");
    if(resultCountryForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetCountryFromFirebaseFirestoreServiceParameterStringDS(resultCountryForUniqueIdByUser);
    }
    final getStringFromNameCountryWhereNotEqualsParameterNameCountry = resultIPAddressForJsonipAPI
        .parameter
        ?.getStringFromNameCountryWhereNotEqualsParameterNameCountry(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "") ?? "";
    if(getStringFromNameCountryWhereNotEqualsParameterNameCountry.isNotEmpty) {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStringFromNameCountryWhereNotEqualsParameterNameCountry(getStringFromNameCountryWhereNotEqualsParameterNameCountry);
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultStringsForUniqueIdByUser.parameter?.field ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultRoleUserForUniqueIdByUser);
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultStringsForUniqueIdByUser.parameter?.field ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultAboutMeForUniqueIdByUser);
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetSeasonFromFirebaseFirestoreServiceNPDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber);
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility
        .getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(GetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility(resultStringsForUniqueIdByUser.parameter?.field ?? "",resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(resultStats);
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultStringsForUniqueIdByUser.parameter?.field ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstBranchOneQInitForPreVerifiedUserSystemViewQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUser);
    }
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForLastLoginTimeByLastLoginTimeUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultLastLoginTimeUserForUniqueIdByUser.parameter?.lastLoginTime ?? DateTime.now());
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUsernameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestoreForUniqueIdByUser.parameter?.username ?? "");
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForGlobalNameByDiscordUser
        .updateStringsToTempCacheServiceParameterStringDS(resultDiscordUserFirestoreForUniqueIdByUser.parameter?.globalName ?? "");
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
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForPreVerifiedUserSystemView() {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForPreVerifiedUserSystemView();
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultStringsForUniqueIdByUser.exceptionController;
    return resultStringsForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<DiscordUserFirestore> resultDiscordUserFirestoreForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultDiscordUserFirestoreForUniqueIdByUser.exceptionController;
    return resultDiscordUserFirestoreForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetIPAddressFromHttpClientServiceNPDS(Result<IPAddress> resultIPAddressForJsonipAPI)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultIPAddressForJsonipAPI.exceptionController;
    return resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetCountryFromFirebaseFirestoreServiceParameterStringDS(Result<Country> resultCountryForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultCountryForUniqueIdByUser.exceptionController;
    return resultCountryForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStringFromNameCountryWhereNotEqualsParameterNameCountry(String getStringFromNameCountryWhereNotEqualsParameterNameCountry)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.otherException = getStringFromNameCountryWhereNotEqualsParameterNameCountry;
    return getStringFromNameCountryWhereNotEqualsParameterNameCountry;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(Result<RoleUser> resultRoleUserForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultRoleUserForUniqueIdByUser.exceptionController;
    return resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(Result<AboutMe> resultAboutMeForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultAboutMeForUniqueIdByUser.exceptionController;
    return resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetSeasonFromFirebaseFirestoreServiceNPDS(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController;
    return resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(Result<Stats> resultStats)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultStats.exceptionController;
    return resultStats.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultLastLoginTimeUserForUniqueIdByUser.exceptionController;
    return resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<IPAddressFirestore> resultIPAddressFirestoreForUniqueIdByUser)
  async {
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.exceptionController = resultIPAddressFirestoreForUniqueIdByUser.exceptionController;
    return resultIPAddressFirestoreForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstBranchOneQInitForPreVerifiedUserSystemViewQGetStringWhereNotEqualsFromIpParameterIp(String getStringWhereNotEqualsFromIpParameterIp)
  async {
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS("");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(DateTime.now());
    await _userQSharedPreferencesServiceViewModelUsingDeleteNP
        .deleteUserToSharedPreferencesServiceNPDS();
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.isLoading = false;
    _dataForPreVerifiedUserSystemViewQThereIsStreamStateViewModel
        .getDataForPreVerifiedUserSystemView
        ?.otherException = getStringWhereNotEqualsFromIpParameterIp;
    return getStringWhereNotEqualsFromIpParameterIp;
  }
}