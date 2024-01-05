import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_number_of_rounds_by_match_balance_and_stream_notification_is_possible_ee_from_ints_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/data_for_settings_number_of_rounds_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/i_settings_number_of_rounds_to_match_balance_view_model.dart';

@immutable
final class TestSettingsNumberOfRoundsToMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNumberOfRoundsToMatchBalanceView,
    DefaultStreamWState<DataForSettingsNumberOfRoundsToMatchBalanceView>> implements ISettingsNumberOfRoundsToMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService();
  final _updateEEIntsEEWhereNumberOfRoundsByMatchBalanceAndStreamNotificationIsPossibleEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereNumberOfRoundsByMatchBalanceAndStreamNotificationIsPossibleEEFromIntsEEParameterTempCacheService();

  // NamedUtility

  TestSettingsNumberOfRoundsToMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsNumberOfRoundsToMatchBalanceView(true,0)));

  @override
  Future<String> init() async {
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.numberOfRoundsByMatchBalance = getMatchBalanceWhereItsLikeMutableParameterTempCacheService.parameter?.numberOfRounds ?? 0;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setNumberOfRoundsByMatchBalance(String strNumberOfRoundsByMatchBalance) {
    final tryParseFromStr = AlgorithmsUtility.getTryParseFromStr(strNumberOfRoundsByMatchBalance);
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQSetNumberOfRoundsByMatchBalanceQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
      return;
    }
    final parameter = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getMatchBalanceFromNewNumberOfRoundsParametersTwo(tryParseFromStr);
    _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableFromMatchBalanceParameterTempCacheService(parameter);
    _updateEEIntsEEWhereNumberOfRoundsByMatchBalanceAndStreamNotificationIsPossibleEEFromIntsEEParameterTempCacheService
        .updateIntsWhereNumberOfRoundsByMatchBalanceAndStreamNotificationIsPossibleFromIntsParameterTempCacheService(Ints(parameter.numberOfRounds));
    getDataForNamedParameterNamedStreamWState.numberOfRoundsByMatchBalance = tryParseFromStr;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }

  void _firstQQSetNumberOfRoundsByMatchBalanceQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}
