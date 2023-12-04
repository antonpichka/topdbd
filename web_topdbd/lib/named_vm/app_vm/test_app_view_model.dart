import 'package:common_topdbd/model/season/list_season.dart';
import 'package:common_topdbd/model/season/season.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_bools_ee_where_is_admin_by_role_user_ee_from_bools_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_bools_ee_where_is_test_by_role_user_ee_from_bools_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_dates_times_ee_where_creation_time_by_user_ee_from_dates_times_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_dates_times_ee_where_end_of_season_time_by_season_ee_from_dates_times_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_dates_times_ee_where_last_login_time_by_last_login_time_user_ee_from_dates_times_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_dates_times_ee_where_start_of_season_time_by_season_ee_from_dates_times_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_matches_lost_by_stats_ee_from_ints_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_matches_won_by_stats_ee_from_ints_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_rating_points_by_stats_ee_from_ints_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_season_number_by_season_ee_from_ints_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_season_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_list_ee_season_ee_from_list_season_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_strings_ee_where_code_dbd_by_about_me_ee_from_strings_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_strings_ee_where_global_name_by_discord_user_ee_from_strings_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_strings_ee_where_ip_by_ip_address_ee_from_strings_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_strings_ee_where_name_country_by_country_ee_from_strings_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_strings_ee_where_unique_id_by_user_ee_from_strings_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_strings_ee_where_username_by_discord_user_ee_from_strings_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_uibu_w_ubdu_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_uibu_w_ubdu_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';
import 'package:web_topdbd/named_vm/app_vm/i_app_view_model.dart';

@immutable
final class TestAppViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>>
    implements IAppViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _updateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService();
  final _updateEEDatesTimesEEWhereCreationTimeByUserEEFromDatesTimesEEParameterTempCacheService =
  UpdateEEDatesTimesEEWhereCreationTimeByUserEEFromDatesTimesEEParameterTempCacheService();
  final _updateEEDatesTimesEEWhereLastLoginTimeByLastLoginTimeUserEEFromDatesTimesEEParameterTempCacheService =
  UpdateEEDatesTimesEEWhereLastLoginTimeByLastLoginTimeUserEEFromDatesTimesEEParameterTempCacheService();
  final _updateEEStringsEEWhereUsernameByDiscordUserEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereUsernameByDiscordUserEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereGlobalNameByDiscordUserEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereGlobalNameByDiscordUserEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereCodeDBDByAboutMeEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereCodeDBDByAboutMeEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereIpByIPAddressEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereIpByIPAddressEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereNameCountryByCountryEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereNameCountryByCountryEEFromStringsEEParameterTempCacheService();
  final _updateEEIntsEEWhereMatchesWonByStatsEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereMatchesWonByStatsEEFromIntsEEParameterTempCacheService();
  final _updateEEIntsEEWhereMatchesLostByStatsEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereMatchesLostByStatsEEFromIntsEEParameterTempCacheService();
  final _updateEEIntsEEWhereRatingPointsByStatsEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereRatingPointsByStatsEEFromIntsEEParameterTempCacheService();
  final _updateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsAdminByRoleUserEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsAdminByRoleUserEEFromBoolsEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsTestByRoleUserEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsTestByRoleUserEEFromBoolsEEParameterTempCacheService();
  final _updateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService =
  UpdateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService();
  final _updateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService =
  UpdateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService();
  final _updateListEESeasonEEFromListSeasonEEParameterTempCacheService =
  UpdateListEESeasonEEFromListSeasonEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestAppViewModel() : super(DefaultStreamWState(DataForAppView(true,List<bool>.empty(growable: true),false,"","","")));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription.cancelListeningUIBUWUBDUParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    /// UNAUTH
   /* getDataForNamedParameterNamedStreamWState.isLoading = false;
     getDataForNamedParameterNamedStreamWState.listLoaded = List<bool>.of([true,true]);
     return KeysSuccessUtility.sUCCESS;
    */
    /// AUTH
    const uniqueIdByUser = "4b08db90-9114-11ee-b9d1-0242ac120002";
    const usernameByDiscordUser = "wwwwwwqwwwwwwwwwwwqqwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq";
    _updateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService
        .updateStringsWhereUniqueIdByUserFromStringsParameterTempCacheService(const Strings(uniqueIdByUser));
    _updateEEDatesTimesEEWhereCreationTimeByUserEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereCreationTimeByUserFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2012-02-27")));
    _updateEEDatesTimesEEWhereLastLoginTimeByLastLoginTimeUserEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereLastLoginTimeByLastLoginTimeUserFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.now()));
    _updateEEStringsEEWhereUsernameByDiscordUserEEFromStringsEEParameterTempCacheService
        .updateStringsWhereUsernameByDiscordUserFromStringsParameterTempCacheService(const Strings(usernameByDiscordUser));
    _updateEEStringsEEWhereGlobalNameByDiscordUserEEFromStringsEEParameterTempCacheService
        .updateStringsWhereGlobalNameByDiscordUserFromStringsParameterTempCacheService(const Strings("Top1World"));
    _updateEEStringsEEWhereCodeDBDByAboutMeEEFromStringsEEParameterTempCacheService
        .updateStringsWhereCodeDBDByAboutMeFromStringsParameterTempCacheService(const Strings("wqwtr#1245"));
    _updateEEStringsEEWhereIpByIPAddressEEFromStringsEEParameterTempCacheService
        .updateStringsWhereIpByIPAddressFromStringsParameterTempCacheService(const Strings("135.125.26.42"));
    _updateEEStringsEEWhereNameCountryByCountryEEFromStringsEEParameterTempCacheService
        .updateStringsWhereNameCountryByCountryFromStringsParameterTempCacheService(const Strings("UA"));
    _updateEEIntsEEWhereMatchesWonByStatsEEFromIntsEEParameterTempCacheService
        .updateIntsWhereMatchesWonByStatsFromIntsParameterTempCacheService(const Ints(20));
    _updateEEIntsEEWhereMatchesLostByStatsEEFromIntsEEParameterTempCacheService
        .updateIntsWhereMatchesLostByStatsFromIntsParameterTempCacheService(const Ints(10));
    _updateEEIntsEEWhereRatingPointsByStatsEEFromIntsEEParameterTempCacheService
        .updateIntsWhereRatingPointsByStatsFromIntsParameterTempCacheService(const Ints(534));
    _updateEEBoolsEEWhereIsAdminByRoleUserEEFromBoolsEEParameterTempCacheService
        .updateBoolsWhereIsAdminByRoleUserFromBoolsParameterTempCacheService(const Bools(true));
    _updateEEBoolsEEWhereIsTestByRoleUserEEFromBoolsEEParameterTempCacheService
       .updateBoolsWhereIsTestByRoleUserFromBoolsParameterTempCacheService(const Bools(true));
    _updateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService
        .updateIntsWhereSeasonNumberBySeasonFromIntsParameterTempCacheService(const Ints(30));
    _updateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereStartOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2023-10-01")));
    _updateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereEndOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2023-10-31")));
    _updateListEESeasonEEFromListSeasonEEParameterTempCacheService
        .updateListSeasonFromListSeasonParameterTempCacheService(ListSeason(List.of(
        [
          Season(1,200,40,DateTime.parse("2023-01-01"),DateTime.parse("2023-01-31")),
          Season(2,200,40,DateTime.parse("2023-02-01"),DateTime.parse("2023-02-28")),
          Season(3,200,40,DateTime.parse("2023-03-01"),DateTime.parse("2023-03-31")),
          Season(4,200,40,DateTime.parse("2023-04-01"),DateTime.parse("2023-04-30")),
          Season(5,200,40,DateTime.parse("2023-05-01"),DateTime.parse("2023-05-31")),
          Season(6,200,40,DateTime.parse("2023-06-01"),DateTime.parse("2023-06-30")),
          Season(7,200,40,DateTime.parse("2023-07-01"),DateTime.parse("2023-07-31")),
          Season(8,200,40,DateTime.parse("2023-08-01"),DateTime.parse("2023-08-31")),
          Season(9,200,40,DateTime.parse("2023-09-01"),DateTime.parse("2023-09-30"))
        ])));
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.listLoaded = List<bool>.of([true,true]);
    getDataForNamedParameterNamedStreamWState.uniqueIdByUser = uniqueIdByUser;
    getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = usernameByDiscordUser;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningStreamsTempCacheService() {
    _startListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningUIBUWUBDUFromCallbackParametersTempCacheServiceAndStreamSubscription((uIBUWUBDU)
    {
      getDataForNamedParameterNamedStreamWState.uniqueIdByUser = uIBUWUBDU.parameter?.uniqueIdByUser ?? "";
      getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = uIBUWUBDU.parameter?.usernameByDiscordUser ?? "";
    });
  }

  @override
  void listeningStreamsFirebaseFirestoreService() {
  }

  @override
  void setNameRoute(String rawNameRoute) {
    final stringWhereProcessedNameRouteFromRawNameRoute = AlgorithmsUtility.getStringWhereProcessedNameRouteFromRawNameRoute(rawNameRoute);
    getDataForNamedParameterNamedStreamWState.nameRoute = stringWhereProcessedNameRouteFromRawNameRoute;
  }

  @override
  void notifyStreamDataForAppView() {
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}