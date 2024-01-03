import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/i_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view_model.dart';

@immutable
final class TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView>> implements ISettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService();

  // NamedUtility

  TestSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel(String nameByManiacWMatchBalance,int necessaryLengthPickedManiacPerkByManiacWMatchBalance, int lengthByListManiacPerkWMatchBalance)
      : super(DefaultStreamWState(DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(true,nameByManiacWMatchBalance,necessaryLengthPickedManiacPerkByManiacWMatchBalance,lengthByListManiacPerkWMatchBalance)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    // TODO: implement listeningTempCacheService
  }

  @override
  void onChangedToDropdownButton(int? value) {
    final getMatchBalanceWhereItsLikeMutableParameterTempCacheService = _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService
        .getMatchBalanceWhereItsLikeMutableParameterTempCacheService();
    if(getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      _firstQQOnChangedToDropdownButtonQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(getMatchBalanceWhereItsLikeMutableParameterTempCacheService.exceptionController);
      return;
    }
    final nameByManiacWMatchBalance = getDataForNamedParameterNamedStreamWState.nameByManiacWMatchBalance;
    final parameter = getMatchBalanceWhereItsLikeMutableParameterTempCacheService
        .parameter
        !.getClone;
    parameter
        .listManiacWMatchBalance
        .updateWhereNecessaryLengthPickedManiacPerkFromTwoParameterListModel(nameByManiacWMatchBalance,value ?? 0);
    _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService
        .updateMatchBalanceWhereItsLikeMutableFromMatchBalanceParameterTempCacheService(parameter);
    getDataForNamedParameterNamedStreamWState.necessaryLengthPickedManiacPerkByManiacWMatchBalance = value ?? 0;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQOnChangedToDropdownButtonQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}