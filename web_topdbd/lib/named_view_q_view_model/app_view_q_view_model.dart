import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/ip_address/ip_address.dart';
import 'package:common_topdbd/model/ip_address_firestore/ip_address_firestore.dart';
import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/those_works/those_works.dart';
import 'package:common_topdbd/model/topdbd_version_web/topdbd_version_web.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/get_unique_id_by_user_and_season_number_by_season_to_stats_utility.dart';
import 'package:common_topdbd/named_utility/keys_name_stream_to_init_stream_utility.dart';
import 'package:common_topdbd/named_utility/keys_name_stream_to_temp_cache_service_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_status_notify_list_init_stream.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model/role_user_q_firebase_firestore_service_view_model_using_get_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model_using_get_list_parameter_int_for_season_number_where_not_equals_and_sort_parameter_season_number.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model/season_q_firebase_firestore_service_view_model_using_get_np_for_last_season_where_sort_parameter_season_number.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model/stats_q_firebase_firestore_service_view_model_using_get_parameter_get_unique_id_by_user_and_season_number_by_season_to_stats_utility.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/those_works_q_firebase_firestore_service_view_model/those_works_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/topdbd_version_web_q_firebase_firestore_service_view_model/topdbd_version_web_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_http_client_service_view_model/ip_address_q_http_client_service_view_model/ip_address_q_http_client_service_view_model_using_get_np_for_jsonip_api.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_delete_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_shared_preference_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_is_hacked_by_security.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_is_init_by_init.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_is_verified_user_by_verified_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_admin_by_role_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model/bools_q_temp_cache_service_view_model_using_update_parameter_bool_for_is_test_by_role_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/country_tc_q_temp_cache_service_view_model/country_tc_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_creation_time_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_end_of_season_time_by_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_last_login_time_by_last_login_time_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model/dates_times_q_temp_cache_service_view_model_using_update_parameter_date_time_for_start_of_season_time_by_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_matches_lost_by_stats.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_matches_won_by_stats.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_rating_points_by_stats.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model/ints_q_temp_cache_service_view_model_using_update_parameter_int_for_season_number_by_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maniac_perk_q_temp_cache_service_view_model/maniac_perk_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maniac_q_temp_cache_service_view_model/maniac_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/maps_q_temp_cache_service_view_model/maps_q_temp_cache_service_view_model_using_update_list_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/season_q_temp_cache_service_view_model/season_q_temp_cache_service_view_model_using_update_list_parameter_list_season.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_custom_start_listening_and_cancel_listening_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_get_np_for_version_by_topdbd_version_web.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_np_for_version_by_topdbd_version_web.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_code_dbd_by_about_me.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_global_name_by_discord_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_ip_by_ip_address.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_name_country_by_country.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_unique_id_by_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model/strings_q_temp_cache_service_view_model_using_update_parameter_string_for_username_by_discord_user.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_temp_cache_service_view_model/survivor_perk_q_temp_cache_service_view_model/survivor_perk_q_temp_cache_service_view_model_using_update_list_np.dart';

@immutable
final class AppViewQViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>> {
  // OperationResultModel(InNamedWhereNamed)[FromNamed]ParameterNamedService
  // NamedUtility

  final _stringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb =
  StringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb();
  final _survivorPerkQTempCacheServiceViewModelUsingUpdateListNP =
  SurvivorPerkQTempCacheServiceViewModelUsingUpdateListNP();
  final _mapsQTempCacheServiceViewModelUsingUpdateListNP =
  MapsQTempCacheServiceViewModelUsingUpdateListNP();
  final _maniacQTempCacheServiceViewModelUsingUpdateListNP =
  ManiacQTempCacheServiceViewModelUsingUpdateListNP();
  final _maniacPerkQTempCacheServiceViewModelUsingUpdateListNP =
  ManiacPerkQTempCacheServiceViewModelUsingUpdateListNP();
  final _countryTCQTempCacheServiceViewModelUsingUpdateListNP =
  CountryTCQTempCacheServiceViewModelUsingUpdateListNP();
  final _userQSharedPreferencesServiceViewModelUsingGetNP =
  UserQSharedPreferencesServiceViewModelUsingGetNP();
  final _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser();
  final _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser =
  DatesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser();
  final _stringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb =
  StringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb();
  final _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser =
  StringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser();
  final _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  ThoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  TOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();
  final _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser =
  BoolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser();
  final _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsHackedBySecurity =
  BoolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsHackedBySecurity();
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
  final _seasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber =
  SeasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber();
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
  final _userQSharedPreferencesServiceViewModelUsingDeleteNP =
  UserQSharedPreferencesServiceViewModelUsingDeleteNP();
  final _seasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason =
  SeasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason();
  final _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsInitByInit =
  BoolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsInitByInit();

  AppViewQViewModel() : super(DefaultStreamWState(DataForAppView(ReadyDataUtility.getListInitStream,EnumStatusNotifyListInitStream.noNotify,"",false,false,"","",false,false)));

  @override
  void dispose() {
    super.dispose();
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser.cancelListening();
    _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser.cancelListening();
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsHackedBySecurity.cancelListening();
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsInitByInit.cancelListening();
  }

  @override
  Future<String> init()
  async {
    final resultBool = await _survivorPerkQTempCacheServiceViewModelUsingUpdateListNP
        .updateListSurvivorPerkToTempCacheServiceNPDS();
    if(resultBool
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQUpdateListSurvivorPerkToTempCacheServiceNPDS(resultBool);
    }
    final resultBoolTwo = await _mapsQTempCacheServiceViewModelUsingUpdateListNP
        .updateListMapsToTempCacheServiceNPDS();
    if(resultBoolTwo
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQUpdateListMapsToTempCacheServiceNPDS(resultBoolTwo);
    }
    final resultBoolThree = await _maniacQTempCacheServiceViewModelUsingUpdateListNP
        .updateListManiacToTempCacheServiceNPDS();
    if(resultBoolThree
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQUpdateListManiacToTempCacheServiceNPDS(resultBoolThree);
    }
    final resultBoolFour = await _maniacPerkQTempCacheServiceViewModelUsingUpdateListNP
        .updateListManiacPerkToTempCacheServiceNPDS();
    if(resultBoolFour
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQUpdateListManiacPerkToTempCacheServiceNPDS(resultBoolFour);
    }
    final resultBoolFive = await _countryTCQTempCacheServiceViewModelUsingUpdateListNP
        .updateListCountryTCToTempCacheServiceNPDS();
    if(resultBoolFive
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQUpdateListCountryTCToTempCacheServiceNPDS(resultBoolFive);
    }
    final resultUser = await _userQSharedPreferencesServiceViewModelUsingGetNP
        .getUserFromSharedPreferencesServiceNPDS();
    if(resultUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetUserFromSharedPreferencesServiceNPDS(resultUser);
    }
    final getStringWhereIsEmptyParameterUniqueId = resultUser
        .parameter
        ?.getStringWhereIsEmptyParameterUniqueId ?? "";
    if(getStringWhereIsEmptyParameterUniqueId.isNotEmpty) {
      return _firstQInitQGetStringWhereIsEmptyParameterUniqueId(getStringWhereIsEmptyParameterUniqueId);
    }
    final resultDiscordUserFirestoreForUniqueIdByUser = await _discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    if(resultDiscordUserFirestoreForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultDiscordUserFirestoreForUniqueIdByUser);
    }
    final resultIPAddressForJsonipAPI = await _iPAddressQHttpClientServiceViewModelUsingGetNPForJsonipAPI
        .getIPAddressFromHttpClientServiceNPDS();
    if(resultIPAddressForJsonipAPI
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetIPAddressFromHttpClientServiceNPDS(resultIPAddressForJsonipAPI);
    }
    final resultIPAddressFirestoreForUniqueIdByUser = await _iPAddressFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    if(resultIPAddressFirestoreForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(resultIPAddressFirestoreForUniqueIdByUser);
    }
    final getStringWhereNotEqualsFromIpParameterIp = resultIPAddressForJsonipAPI
        .parameter
        ?.getStringWhereNotEqualsFromIpParameterIp(resultIPAddressFirestoreForUniqueIdByUser.parameter?.ip ?? "") ?? "";
    if(getStringWhereNotEqualsFromIpParameterIp.isNotEmpty) {
      return _firstQInitQGetStringWhereNotEqualsFromIpParameterIp(getStringWhereNotEqualsFromIpParameterIp);
    }
    final resultCountryForUniqueIdByUser = await _countryQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getCountryFromFirebaseFirestoreServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    if(resultCountryForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetCountryFromFirebaseFirestoreServiceParameterStringDS(resultCountryForUniqueIdByUser);
    }
    final getStringFromNameCountryWhereNotEqualsParameterNameCountry = resultIPAddressForJsonipAPI
        .parameter
        ?.getStringWhereNotEqualsFromNameCountryParameterNameCountry(resultCountryForUniqueIdByUser.parameter?.nameCountry ?? "") ?? "";
    if(getStringFromNameCountryWhereNotEqualsParameterNameCountry.isNotEmpty) {
      return _firstQInitQGetStringFromNameCountryWhereNotEqualsParameterNameCountry(getStringFromNameCountryWhereNotEqualsParameterNameCountry);
    }
    final resultRoleUserForUniqueIdByUser = await _roleUserQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    if(resultRoleUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(resultRoleUserForUniqueIdByUser);
    }
    final resultAboutMeForUniqueIdByUser = await _aboutMeQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdByUser
        .getAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    if(resultAboutMeForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(resultAboutMeForUniqueIdByUser);
    }
    final resultSeasonForLastSeasonWhereSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetNPForLastSeasonWhereSortParameterSeasonNumber
        .getSeasonFromFirebaseFirestoreServiceNPDS();
    if(resultSeasonForLastSeasonWhereSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetSeasonFromFirebaseFirestoreServiceNPDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber);
    }
    final resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber = await _seasonQFirebaseFirestoreServiceViewModelUsingGetListParameterIntForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .getListSeasonFromFirebaseFirestoreServiceParameterIntDS(resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0);
    if(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetListSeasonFromFirebaseFirestoreServiceParameterIntDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber);
    }
    final resultStats = await _statsQFirebaseFirestoreServiceViewModelUsingGetParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility
        .getStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(GetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtility(resultUser.parameter?.uniqueId ?? "",resultSeasonForLastSeasonWhereSortParameterSeasonNumber.parameter?.seasonNumber ?? 0));
    if(resultStats
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(resultStats);
    }
    final resultLastLoginTimeUserForUniqueIdByUser = await _lastLoginTimeUserQFirebaseFirestoreServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    if(resultLastLoginTimeUserForUniqueIdByUser
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      return _firstQInitQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(resultLastLoginTimeUserForUniqueIdByUser);
    }
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS(resultUser.parameter?.uniqueId ?? "");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(resultUser.parameter?.creationTime ?? DateTime.now());
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
    await _seasonQTempCacheServiceViewModelUsingUpdateListParameterListSeason
        .updateListSeasonToTempCacheServiceParameterListSeasonDS(resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.parameter?.getClone ?? ListSeason(List.empty(growable: true)));
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForAppView() {
    final isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream = getDataForNamedParameterNamedStreamWState
        .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
    if(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
      _fourthQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream);
      return;
    }
  }

  void listeningStreamsTempCacheService() {
    _stringsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForUniqueIdByUser
        .startListening(KeysNameStreamToTempCacheServiceUtility.appViewListViewModelQUniqueIdByUser,(Result<Strings> resultStringsForUniqueIdByUser) {
          getDataForNamedParameterNamedStreamWState
              .uniqueIdByUser = resultStringsForUniqueIdByUser.parameter?.field ?? "";
          final isInitStream = getDataForNamedParameterNamedStreamWState
              .listInitStream
              .getInitStreamFromNameStreamParameterListModel(KeysNameStreamToInitStreamUtility.appViewListViewModelQOne)
              .isInitStream;
          if(isInitStream) {
            _firstQListeningStreamsTempCacheServiceQIsInitStream(isInitStream);
            return;
          }
          getDataForNamedParameterNamedStreamWState
              .listInitStream
              .updateFromNameStreamAndIsInitStreamParameterListModel(KeysNameStreamToInitStreamUtility.appViewListViewModelQOne,true);
          final isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream = getDataForNamedParameterNamedStreamWState
              .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
          if(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
            _firstQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream);
            return;
          }
        });
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsVerifiedUserByVerifiedUser
        .startListening(KeysNameStreamToTempCacheServiceUtility.appViewListViewModelQIsVerifiedUserByVerifiedUser, (Result<Bools> resultBoolsForIsVerifiedUserByVerifiedUser) {
          getDataForNamedParameterNamedStreamWState
              .isNotVerifiedUserByVerifiedUser = !(resultBoolsForIsVerifiedUserByVerifiedUser.parameter?.isField ?? false);
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsHackedBySecurity
        .startListening(KeysNameStreamToTempCacheServiceUtility.appViewListViewModelQIsHackedBySecurity,(Result<Bools> resultBoolsForIsHackedBySecurity) {
          getDataForNamedParameterNamedStreamWState
              .isHackedBySecurity = resultBoolsForIsHackedBySecurity.parameter?.isField ?? false;
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
    _boolsQTempCacheServiceViewModelUsingCustomStartListeningAndCancelListeningForIsInitByInit
        .startListening(KeysNameStreamToTempCacheServiceUtility.appViewListViewModelQIsInitByInit,(Result<Bools> resultBoolsForIsInitByInit) {
          getDataForNamedParameterNamedStreamWState
              .enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.infinityNotify;
        });
  }

  Future<void> listeningStreamsFirebaseFirestoreService()
  async {
    final resultBoolForVersionByTOPDBDVersionWeb = await _stringsQTempCacheServiceViewModelUsingUpdateNPForVersionByTOPDBDVersionWeb
        .updateStringsToTempCacheServiceNPDS();
    if(resultBoolForVersionByTOPDBDVersionWeb
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQListeningStreamsFirebaseFirestoreServiceQUpdateStringsToTempCacheServiceNPDS(resultBoolForVersionByTOPDBDVersionWeb);
      return;
    }
    final resultStringsForVersionByTOPDBDVersionWeb = await _stringsQTempCacheServiceViewModelUsingGetNPForVersionByTOPDBDVersionWeb
        .getStringsFromTempCacheServiceNPDS();
    if(resultStringsForVersionByTOPDBDVersionWeb
        .exceptionController
        .isNotEqualsNullParameterException())
    {
      _firstQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(resultStringsForVersionByTOPDBDVersionWeb);
      return;
    }
    _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening((Result<ThoseWorks> resultThoseWorks) {
      if(resultThoseWorks
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _firstQListeningStreamsFirebaseFirestoreServiceQStartListening(resultThoseWorks);
        return;
      }
      getDataForNamedParameterNamedStreamWState
          .isThoseWorks = resultThoseWorks.parameter?.isThoseWorks ?? false;
      final isInitStream = getDataForNamedParameterNamedStreamWState
          .listInitStream
          .getInitStreamFromNameStreamParameterListModel(KeysNameStreamToInitStreamUtility.appViewListViewModelQTwo)
          .isInitStream;
      if(isInitStream) {
        _secondQListeningStreamsTempCacheServiceQIsInitStream(isInitStream);
        return;
      }
      getDataForNamedParameterNamedStreamWState
          .listInitStream
          .updateFromNameStreamAndIsInitStreamParameterListModel(KeysNameStreamToInitStreamUtility.appViewListViewModelQTwo,true);
      final isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream = getDataForNamedParameterNamedStreamWState
          .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
      if(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
        _secondQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream);
        return;
      }
    });
    _tOPDBDVersionWebQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening((Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb)
    async {
      if(resultTOPDBDVersionWeb
          .exceptionController
          .isNotEqualsNullParameterException())
      {
        _secondQListeningStreamsFirebaseFirestoreServiceQStartListening(resultTOPDBDVersionWeb);
        return;
      }
      final getStringWhereNotEqualsFromVersionParameterVersion = resultTOPDBDVersionWeb
          .parameter
          ?.getStringWhereNotEqualsFromVersionParameterVersion(resultStringsForVersionByTOPDBDVersionWeb.parameter?.field ?? "") ?? "";
      if(getStringWhereNotEqualsFromVersionParameterVersion.isNotEmpty) {
        _firstQListeningStreamsFirebaseFirestoreServiceQGetStringWhereNotEqualsFromVersionParameterVersion(getStringWhereNotEqualsFromVersionParameterVersion,resultTOPDBDVersionWeb.parameter ?? const TOPDBDVersionWeb(""));
        return;
      }
      getDataForNamedParameterNamedStreamWState.isNotValidVersionTOPDBDVersionWeb = false;
      getDataForNamedParameterNamedStreamWState.versionByTOPDBDVersionWeb = resultTOPDBDVersionWeb.parameter?.version ?? "";
      final isInitStream = getDataForNamedParameterNamedStreamWState
          .listInitStream
          .getInitStreamFromNameStreamParameterListModel(KeysNameStreamToInitStreamUtility.appViewListViewModelQThree)
          .isInitStream;
      if(isInitStream) {
        _thirdQListeningStreamsTempCacheServiceQIsInitStream(isInitStream);
        return;
      }
      getDataForNamedParameterNamedStreamWState
          .listInitStream
          .updateFromNameStreamAndIsInitStreamParameterListModel(KeysNameStreamToInitStreamUtility.appViewListViewModelQThree,true);
      final isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream = getDataForNamedParameterNamedStreamWState
          .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
      if(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
        _thirdQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream);
        return;
      }
    });
  }

  Future<String> _firstQInitQUpdateListSurvivorPerkToTempCacheServiceNPDS(Result<bool> resultBool)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultBool.exceptionController;
    return resultBool.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQUpdateListMapsToTempCacheServiceNPDS(Result<bool> resultBoolTwo)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultBoolTwo.exceptionController;
    return resultBoolTwo.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQUpdateListManiacToTempCacheServiceNPDS(Result<bool> resultBoolThree)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultBoolThree.exceptionController;
    return resultBoolThree.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQUpdateListManiacPerkToTempCacheServiceNPDS(Result<bool> resultBoolFour)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultBoolFour.exceptionController;
    return resultBoolFour.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQUpdateListCountryTCToTempCacheServiceNPDS(Result<bool> resultBoolFive)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultBoolFive.exceptionController;
    return resultBoolFive.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetUserFromSharedPreferencesServiceNPDS(Result<User> resultUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultUser.exceptionController;
    return resultUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetStringWhereIsEmptyParameterUniqueId(String getStringWhereIsEmptyParameterUniqueId)
  async {
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS("");
    return getStringWhereIsEmptyParameterUniqueId;
  }

  Future<String> _firstQInitQGetDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<DiscordUserFirestore> resultDiscordUserFirestoreForUniqueIdByUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultDiscordUserFirestoreForUniqueIdByUser.exceptionController;
    return resultDiscordUserFirestoreForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetIPAddressFromHttpClientServiceNPDS(Result<IPAddress> resultIPAddressForJsonipAPI)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultIPAddressForJsonipAPI.exceptionController;
    return resultIPAddressForJsonipAPI.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetCountryFromFirebaseFirestoreServiceParameterStringDS(Result<Country> resultCountryForUniqueIdByUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultCountryForUniqueIdByUser.exceptionController;
    return resultCountryForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetStringFromNameCountryWhereNotEqualsParameterNameCountry(String getStringFromNameCountryWhereNotEqualsParameterNameCountry)
  async {
    getDataForNamedParameterNamedStreamWState
        .otherException = getStringFromNameCountryWhereNotEqualsParameterNameCountry;
    return getStringFromNameCountryWhereNotEqualsParameterNameCountry;
  }

  Future<String> _firstQInitQGetRoleUserFromFirebaseFirestoreServiceParameterStringDS(Result<RoleUser> resultRoleUserForUniqueIdByUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultRoleUserForUniqueIdByUser.exceptionController;
    return resultRoleUserForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetAboutMeFromFirebaseFirestoreServiceParameterStringDS(Result<AboutMe> resultAboutMeForUniqueIdByUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultAboutMeForUniqueIdByUser.exceptionController;
    return resultAboutMeForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetSeasonFromFirebaseFirestoreServiceNPDS(Result<Season> resultSeasonForLastSeasonWhereSortParameterSeasonNumber)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController;
    return resultSeasonForLastSeasonWhereSortParameterSeasonNumber.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetStatsFromFirebaseFirestoreServiceParameterGetUniqueIdByUserAndSeasonNumberBySeasonToStatsUtilityDS(Result<Stats> resultStats)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultStats.exceptionController;
    return resultStats.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQUpdateLastLoginTimeUserToFirebaseFirestoreServiceParameterStringDS(Result<LastLoginTimeUser> resultLastLoginTimeUserForUniqueIdByUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultLastLoginTimeUserForUniqueIdByUser.exceptionController;
    return resultLastLoginTimeUserForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetIPAddressFirestoreFromFirebaseFirestoreServiceParameterStringDS(Result<IPAddressFirestore> resultIPAddressFirestoreForUniqueIdByUser)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultIPAddressFirestoreForUniqueIdByUser.exceptionController;
    return resultIPAddressFirestoreForUniqueIdByUser.exceptionController.getKeyParameterException;
  }

  Future<String> _firstQInitQGetStringWhereNotEqualsFromIpParameterIp(String getStringWhereNotEqualsFromIpParameterIp)
  async {
    await _stringsQTempCacheServiceViewModelUsingUpdateParameterStringForUniqueIdByUser
        .updateStringsToTempCacheServiceParameterStringDS("");
    await _datesTimesQTempCacheServiceViewModelUsingUpdateParameterDateTimeForCreationTimeByUser
        .updateDatesTimesToTempCacheServiceParameterDateTimeDS(DateTime.now());
    await _userQSharedPreferencesServiceViewModelUsingDeleteNP
        .deleteUserToSharedPreferencesServiceNPDS();
    return getStringWhereNotEqualsFromIpParameterIp;
  }

  Future<String> _firstQInitQGetListSeasonFromFirebaseFirestoreServiceParameterIntDS(Result<ListSeason<Season>> resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber)
  async {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.exceptionController;
    return resultListSeasonForSeasonNumberWhereNotEqualsAndSortParameterSeasonNumber.exceptionController.getKeyParameterException;
  }

  void _firstQListeningStreamsFirebaseFirestoreServiceQUpdateStringsToTempCacheServiceNPDS(Result<bool> resultBoolForVersionByTOPDBDVersionWeb) {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultBoolForVersionByTOPDBDVersionWeb.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQListeningStreamsFirebaseFirestoreServiceQStartListening(Result<ThoseWorks> resultThoseWorks) {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultThoseWorks.exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _secondQListeningStreamsFirebaseFirestoreServiceQStartListening(Result<TOPDBDVersionWeb> resultTOPDBDVersionWeb) {
    getDataForNamedParameterNamedStreamWState
        .exceptionController = resultTOPDBDVersionWeb.exceptionController;
    notifyStreamDataForNamed();
  }

  void _firstQListeningStreamsFirebaseFirestoreServiceQGetStringsFromTempCacheServiceNPDS(Result<Strings> resultStringsForVersionByTOPDBDVersionWeb) {
    getDataForNamed.exceptionController = resultStringsForVersionByTOPDBDVersionWeb.exceptionController;
    notifyStreamDataForNamed();
  }

  void _firstQListeningStreamsFirebaseFirestoreServiceQGetStringWhereNotEqualsFromVersionParameterVersion(String getStringWhereNotEqualsFromVersionParameterVersion, TOPDBDVersionWeb tOPDBDVersionWeb) {
    getDataForNamed.isNotValidVersionTOPDBDVersionWeb = true;
    getDataForNamed.versionByTOPDBDVersionWeb = tOPDBDVersionWeb.version;
    notifyStreamDataForNamed();
  }

  void _firstQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _firstBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _secondQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _secondBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _thirdQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _thirdBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _firstQListeningStreamsTempCacheServiceQIsInitStream(bool isInitStream) {
    final isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream = getDataForNamed
        .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
    if(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream) {
      _firstBranchOneQListeningStreamsTempCacheServiceQIsInitStream(isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream);
      return;
    }
  }

  void _firstBranchOneQListeningStreamsTempCacheServiceQIsInitStream(bool isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _firstBranchOneBranchOneQListeningStreamsTempCacheServiceQIsInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _secondQListeningStreamsTempCacheServiceQIsInitStream(bool isInitStream) {
    final isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream = getDataForNamed
        .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
    if(isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream) {
      _secondBranchOneQListeningStreamsTempCacheServiceQIsInitStream(isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream);
      return;
    }
  }

  void _secondBranchOneQListeningStreamsTempCacheServiceQIsInitStream(bool isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _secondBranchOneBranchOneQListeningStreamsTempCacheServiceQIsInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _thirdQListeningStreamsTempCacheServiceQIsInitStream(bool isInitStream) {
    final isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream = getDataForNamed
        .isTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream();
    if(isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream) {
      _thirdBranchOneQListeningStreamsTempCacheServiceQIsInitStream(isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream);
      return;
    }
  }

  void _thirdBranchOneQListeningStreamsTempCacheServiceQIsInitStream(bool isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _thirdBranchOneBranchOneQListeningStreamsTempCacheServiceQIsInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _fourthQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isTrueAndFalseParametersListInitStreamAndIsNotifyListInitStream) {
    final isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream = getDataForNamed
        .isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream();
    if(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
      _fourthBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream );
      return;
    }
    getDataForNamed.enumStatusNotifyListInitStream = EnumStatusNotifyListInitStream.oneNotify;
    notifyStreamDataForNamed();
  }

  void _firstBranchOneBranchOneQListeningStreamsTempCacheServiceQIsInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }

  void _secondBranchOneBranchOneQListeningStreamsTempCacheServiceQIsInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }

  void _thirdBranchOneBranchOneQListeningStreamsTempCacheServiceQIsInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }

  void _fourthBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }

  void _firstBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }

  void _secondBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }

  void _thirdBranchOneQListeningStreamsTempCacheServiceQIsTrueAndEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream(bool isEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream) {
    notifyStreamDataForNamed();
  }
}