import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_ints_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_ints_ee_where_using_to_settings_and_number_of_rounds_by_match_balance_ee_from_ints_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/data_for_settings_number_of_rounds_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/i_settings_number_of_rounds_to_match_balance_view_model.dart';

@immutable
final class TestSettingsNumberOfRoundsToMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNumberOfRoundsToMatchBalanceView,
    DefaultStreamWState<DataForSettingsNumberOfRoundsToMatchBalanceView>> implements ISettingsNumberOfRoundsToMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEParameterTempCacheService =
  GetEEMatchBalanceEEParameterTempCacheService();
  final _updateEEIntsEEWhereUsingToSettingsAndNumberOfRoundsByMatchBalanceEEFromIntsEEParameterTempCacheService =
  UpdateEEIntsEEWhereUsingToSettingsAndNumberOfRoundsByMatchBalanceEEFromIntsEEParameterTempCacheService();

  // NamedUtility

  TestSettingsNumberOfRoundsToMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsNumberOfRoundsToMatchBalanceView(true,0)));

  @override
  Future<String> init() async {
    final getMatchBalanceParameterTempCacheService = _getEEMatchBalanceEEParameterTempCacheService
        .getMatchBalanceParameterTempCacheService();
    if(getMatchBalanceParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetMatchBalanceParameterTempCacheService(getMatchBalanceParameterTempCacheService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.numberOfRoundsByMatchBalance = getMatchBalanceParameterTempCacheService.parameter?.numberOfRounds ?? 0;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setNumberOfRoundsByMatchBalance(String strNumberOfRoundsByMatchBalance) {
    final tryParseFromStr = AlgorithmsUtility.getTryParseFromStr(strNumberOfRoundsByMatchBalance);
    _updateEEIntsEEWhereUsingToSettingsAndNumberOfRoundsByMatchBalanceEEFromIntsEEParameterTempCacheService
        .updateIntsWhereUsingToSettingsAndNumberOfRoundsByMatchBalanceFromIntsParameterTempCacheService(Ints(tryParseFromStr));
    getDataForNamedParameterNamedStreamWState.numberOfRoundsByMatchBalance = tryParseFromStr;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQGetMatchBalanceParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;

  }
}
