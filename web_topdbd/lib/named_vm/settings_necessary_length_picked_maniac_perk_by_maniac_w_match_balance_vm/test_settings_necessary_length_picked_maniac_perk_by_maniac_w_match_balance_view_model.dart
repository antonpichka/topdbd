import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_maniac_w_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_and_stream_notification_is_possible_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/i_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view_model.dart';

@immutable
final class TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView>> implements ISettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEManiacWMatchBalanceEEParameterTempCacheService =
  GetEEManiacWMatchBalanceEEParameterTempCacheService();
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService();

  // NamedUtility

  TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(true,"",0)));

  @override
  Future<String> init() async {
    final getManiacWMatchBalanceParameterTempCacheService = _getEEManiacWMatchBalanceEEParameterTempCacheService
        .getManiacWMatchBalanceParameterTempCacheService();
    if(getManiacWMatchBalanceParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetManiacWMatchBalanceParameterTempCacheService(getManiacWMatchBalanceParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.nameByManiacWMatchBalance = getManiacWMatchBalanceParameterTempCacheService.parameter?.name ?? "";
    getDataForNamedParameterNamedStreamWState.necessaryLengthPickedManiacPerkByManiacWMatchBalance = getManiacWMatchBalanceParameterTempCacheService.parameter?.necessaryLengthPickedManiacPerk ?? 0;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setNecessaryLengthPickedManiacPerkByManiacWMatchBalance(String? value) {
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQSetNecessaryLengthPickedManiacPerkByManiacWMatchBalanceQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
      return;
    }
    final tryParseFromStr = AlgorithmsUtility.getTryParseFromStr(value ?? "");
    final nameByManiacWMatchBalance = getDataForNamedParameterNamedStreamWState.nameByManiacWMatchBalance;
    final clone = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    clone
        .listManiacWMatchBalance
        .updateWhereNecessaryLengthPickedManiacPerkFromTwoParameterListModel(nameByManiacWMatchBalance,tryParseFromStr);
    _updateEEMatchBalanceEEWhereItsLikeMutableAndStreamNotificationIsPossibleEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableAndStreamNotificationIsPossibleFromMatchBalanceParameterTempCacheService(clone);
    getDataForNamedParameterNamedStreamWState.necessaryLengthPickedManiacPerkByManiacWMatchBalance = tryParseFromStr;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQGetManiacWMatchBalanceParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQSetNecessaryLengthPickedManiacPerkByManiacWMatchBalanceQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}