import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_bools_ee_where_is_admin_by_role_user_ee_from_bools_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_dates_times_ee_where_end_of_season_time_by_season_ee_from_dates_times_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_dates_times_ee_where_start_of_season_time_by_season_ee_from_dates_times_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_season_number_by_season_ee_from_ints_ee_parameter_temp_cache_service.dart';
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
  final _updateEEStringsEEWhereUsernameByDiscordUserEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereUsernameByDiscordUserEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereGlobalNameByDiscordUserEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereGlobalNameByDiscordUserEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereIpByIPAddressEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereIpByIPAddressEEFromStringsEEParameterTempCacheService();
  final _updateEEStringsEEWhereNameCountryByCountryEEFromStringsEEParameterTempCacheService =
  UpdateEEStringsEEWhereNameCountryByCountryEEFromStringsEEParameterTempCacheService();
  final _updateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService();
  final _updateEEBoolsEEWhereIsAdminByRoleUserEEFromBoolsEEParameterTempCacheService =
  UpdateEEBoolsEEWhereIsAdminByRoleUserEEFromBoolsEEParameterTempCacheService();
  final _updateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService =
  UpdateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService();
  final _updateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService =
  UpdateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService();
  final _startListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestAppViewModel() : super(DefaultStreamWState(DataForAppView(false,List<bool>.empty(growable: true),"",false,"","",false,false,DateTime(0),DateTime(0))));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription.cancelListeningUIBUWUBDUParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    /// UnAuth
    /*
     _updateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService
        .updateIntsWhereSeasonNumberBySeasonFromIntsParameterTempCacheService(const Ints(10));
     _updateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereStartOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2023-12-01")));
     _updateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereEndOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2023-12-31")));
     getDataForNamedParameterNamedStreamWState.listLoaded = List<bool>.of([true,true]);
     return KeysSuccessUtility.sUCCESS;
    */
    /// Auth
    const uniqueIdByUser = "4b08db90-9114-11ee-b9d1-0242ac120002";
    const usernameByDiscordUser = "vicar32";
    const isAdminByRoleUser = true;
    _updateEEIntsEEWhereSeasonNumberBySeasonEEFromIntsEEParameterTempCacheService
        .updateIntsWhereSeasonNumberBySeasonFromIntsParameterTempCacheService(const Ints(10));
    _updateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereStartOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2023-12-01")));
    _updateEEDatesTimesEEWhereEndOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService
        .updateDatesTimesWhereEndOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(DatesTimes(DateTime.parse("2023-12-31")));
    _updateEEStringsEEWhereUniqueIdByUserEEFromStringsEEParameterTempCacheService
        .updateStringsWhereUniqueIdByUserFromStringsParameterTempCacheService(const Strings(uniqueIdByUser));
    _updateEEStringsEEWhereUsernameByDiscordUserEEFromStringsEEParameterTempCacheService
        .updateStringsWhereUsernameByDiscordUserFromStringsParameterTempCacheService(const Strings(usernameByDiscordUser));
    _updateEEStringsEEWhereGlobalNameByDiscordUserEEFromStringsEEParameterTempCacheService
        .updateStringsWhereGlobalNameByDiscordUserFromStringsParameterTempCacheService(const Strings("Vicar"));
    _updateEEStringsEEWhereIpByIPAddressEEFromStringsEEParameterTempCacheService
        .updateStringsWhereIpByIPAddressFromStringsParameterTempCacheService(const Strings("135.125.26.42"));
    _updateEEStringsEEWhereNameCountryByCountryEEFromStringsEEParameterTempCacheService
        .updateStringsWhereNameCountryByCountryFromStringsParameterTempCacheService(const Strings("UA"));
    _updateEEBoolsEEWhereIsAdminByRoleUserEEFromBoolsEEParameterTempCacheService
        .updateBoolsWhereIsAdminByRoleUserFromBoolsParameterTempCacheService(const Bools(isAdminByRoleUser));
    getDataForNamedParameterNamedStreamWState.listLoaded = List<bool>.of([true,true]);
    getDataForNamedParameterNamedStreamWState.uniqueIdByUser = uniqueIdByUser;
    getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = usernameByDiscordUser;
    getDataForNamedParameterNamedStreamWState.isAdminByRoleUser = isAdminByRoleUser;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningStreamsTempCacheService() {
    _startListeningAndCancelListeningEEUIBUWUBDUEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningUIBUWUBDUFromCallbackParametersTempCacheServiceAndStreamSubscription((uIBUWUBDU)
    {
      getDataForNamedParameterNamedStreamWState.uniqueIdByUser = uIBUWUBDU.parameter?.uniqueIdByUser ?? "";
      getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = uIBUWUBDU.parameter?.usernameByDiscordUser ?? "";
      getDataForNamedParameterNamedStreamWState.isAdminByRoleUser = uIBUWUBDU.parameter?.isAdminByRoleUser ?? false;
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