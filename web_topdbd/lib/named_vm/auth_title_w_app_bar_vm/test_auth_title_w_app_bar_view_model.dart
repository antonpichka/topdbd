import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_bools_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_bools_ee_where_is_admin_by_role_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_dates_times_ee_where_creation_time_by_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_dates_times_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_dates_times_ee_where_last_login_time_by_last_login_time_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_ints_ee_where_matches_lost_by_stats_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_ints_ee_where_matches_won_by_stats_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_ints_ee_where_rating_points_by_stats_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_strings_ee_where_code_dbd_by_about_me_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_strings_ee_where_global_name_by_discord_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_strings_ee_where_ip_by_ip_address_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_strings_ee_where_name_country_by_country_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_strings_ee_where_unique_id_by_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/delete_ee_strings_ee_where_username_by_discord_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_name_country_by_country_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_strings_ee_where_username_by_discord_user_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_uibu_w_ubdu_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_uibu_w_ubdu_ee_where_stream_notification_is_possible_ee_from_uibu_w_ubdu_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/data_for_auth_title_w_app_bar_view.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/i_auth_title_w_app_bar_view_model.dart';

@immutable
final class TestAuthTitleWAppBarViewModel extends BaseNamedViewModel<DataForAuthTitleWAppBarView,DefaultStreamWState<DataForAuthTitleWAppBarView>>
    implements IAuthTitleWAppBarViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService =
  GetEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService();
  final _getEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService =
  GetEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService();
  final _updateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService =
  UpdateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService();
  final _deleteEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService =
  DeleteEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService();
  final _deleteEEDatesTimesEEWhereCreationTimeByUserEEParameterTempCacheService =
  DeleteEEDatesTimesEEWhereCreationTimeByUserEEParameterTempCacheService();
  final _deleteEEDatesTimesEEWhereLastLoginTimeByLastLoginTimeUserEEParameterTempCacheService =
  DeleteEEDatesTimesEEWhereLastLoginTimeByLastLoginTimeUserEEParameterTempCacheService();
  final _deleteEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService =
  DeleteEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService();
  final _deleteEEStringsEEWhereGlobalNameByDiscordUserEEParameterTempCacheService =
  DeleteEEStringsEEWhereGlobalNameByDiscordUserEEParameterTempCacheService();
  final _deleteEEStringsEEWhereCodeDBDByAboutMeEEParameterTempCacheService =
  DeleteEEStringsEEWhereCodeDBDByAboutMeEEParameterTempCacheService();
  final _deleteEEStringsEEWhereIpByIPAddressEEParameterTempCacheService =
  DeleteEEStringsEEWhereIpByIPAddressEEParameterTempCacheService();
  final _deleteEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService =
  DeleteEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService();
  final _deleteEEIntsEEWhereMatchesWonByStatsEEParameterTempCacheService =
  DeleteEEIntsEEWhereMatchesWonByStatsEEParameterTempCacheService();
  final _deleteEEIntsEEWhereMatchesLostByStatsEEParameterTempCacheService =
  DeleteEEIntsEEWhereMatchesLostByStatsEEParameterTempCacheService();
  final _deleteEEIntsEEWhereRatingPointsByStatsEEParameterTempCacheService =
  DeleteEEIntsEEWhereRatingPointsByStatsEEParameterTempCacheService();
  final _deleteEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService =
  DeleteEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService();

  // NamedUtility

  TestAuthTitleWAppBarViewModel() : super(DefaultStreamWState(DataForAuthTitleWAppBarView(true,"","")));

  @override
  Future<String> init() async {
    final getStringsWhereUsernameByDiscordUserParameterTempCacheService = _getEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService
        .getStringsWhereUsernameByDiscordUserParameterTempCacheService();
    if(getStringsWhereUsernameByDiscordUserParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereUsernameByDiscordUserParameterTempCacheService(getStringsWhereUsernameByDiscordUserParameterTempCacheService.exceptionController);
    }
    final getStringsWhereNameCountryByCountryParameterTempCacheService = _getEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService
        .getStringsWhereNameCountryByCountryParameterTempCacheService();
    if(getStringsWhereNameCountryByCountryParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereNameCountryByCountryParameterTempCacheService(getStringsWhereNameCountryByCountryParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.usernameByDiscordUser = getStringsWhereUsernameByDiscordUserParameterTempCacheService.parameter?.field ?? "";
    getDataForNamedParameterNamedStreamWState.nameCountryByCountry = getStringsWhereNameCountryByCountryParameterTempCacheService.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void clickOnMyUser(Function(String) callback) {
    callback(getDataForNamedParameterNamedStreamWState.usernameByDiscordUser);
  }

  @override
  void logout(Function() callback) {
    _deleteEEStringsEEWhereUniqueIdByUserEEParameterTempCacheService
        .deleteStringsWhereUniqueIdByUserParameterTempCacheService();
    _deleteEEDatesTimesEEWhereCreationTimeByUserEEParameterTempCacheService
        .deleteDatesTimesWhereCreationTimeByUserParameterTempCacheService();
    _deleteEEDatesTimesEEWhereLastLoginTimeByLastLoginTimeUserEEParameterTempCacheService
        .deleteDatesTimesWhereLastLoginTimeByLastLoginTimeUserParameterTempCacheService();
    _deleteEEStringsEEWhereUsernameByDiscordUserEEParameterTempCacheService
        .deleteStringsWhereUsernameByDiscordUserParameterTempCacheService();
    _deleteEEStringsEEWhereGlobalNameByDiscordUserEEParameterTempCacheService
        .deleteStringsWhereGlobalNameByDiscordUserParameterTempCacheService();
    _deleteEEStringsEEWhereCodeDBDByAboutMeEEParameterTempCacheService
        .deleteStringsWhereCodeDBDByAboutMeParameterTempCacheService();
    _deleteEEStringsEEWhereIpByIPAddressEEParameterTempCacheService
        .deleteStringsWhereIpByIPAddressParameterTempCacheService();
    _deleteEEStringsEEWhereNameCountryByCountryEEParameterTempCacheService
        .deleteStringsWhereNameCountryByCountryParameterTempCacheService();
    _deleteEEIntsEEWhereMatchesWonByStatsEEParameterTempCacheService
        .deleteIntsWhereMatchesWonByStatsParameterTempCacheService();
    _deleteEEIntsEEWhereMatchesLostByStatsEEParameterTempCacheService
        .deleteIntsWhereMatchesLostByStatsParameterTempCacheService();
    _deleteEEIntsEEWhereRatingPointsByStatsEEParameterTempCacheService
        .deleteIntsWhereRatingPointsByStatsParameterTempCacheService();
    _deleteEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService
        .deleteBoolsWhereIsAdminByRoleUserParameterTempCacheService();
    _updateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService
        .updateUIBUWUBDUWhereStreamNotificationIsPossibleFromUIBUWUBDUParameterTempCacheService(const UIBUWUBDU("",""));
    callback();
  }

  Future<String> _firstQQInitQQGetStringsWhereUsernameByDiscordUserParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return exceptionController.getKeyParameterException;
  }

  Future<String> _firstQQInitQQGetStringsWhereNameCountryByCountryParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return exceptionController.getKeyParameterException;
  }
}