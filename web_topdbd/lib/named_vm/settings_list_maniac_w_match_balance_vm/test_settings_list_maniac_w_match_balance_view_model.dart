import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_maniac_w_match_balance_ee_where_stream_notification_is_possible_ee_from_maniac_w_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_where_its_like_mutable_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_match_balance_ee_where_its_like_mutable_ee_from_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/data_for_settings_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/i_settings_list_maniac_w_match_balance_view_model.dart';

@immutable
final class TestSettingsListManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListManiacWMatchBalanceView>> implements ISettingsListManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService =
  GetEEMatchBalanceEEWhereItsLikeMutableEEParameterTempCacheService();
  final _updateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService =
  UpdateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService();
  final _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService =
  UpdateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService();

  // NamedUtility

  TestSettingsListManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListManiacWMatchBalanceView(true,true,false,"",ListManiacWMatchBalance(List.empty(growable: true)))));

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
    getDataForNamedParameterNamedStreamWState.listManiacWMatchBalanceByMatchBalance = getMatchBalanceWhereItsLikeMutableParameterTempCacheService.parameter!.listManiacWMatchBalance.getClone;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    getDataForNamedParameterNamedStreamWState
        .selectedItemManiacWMatchBalance = itemManiacWMatchBalance.name;
    _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService
        .updateManiacWMatchBalanceWhereStreamNotificationIsPossibleFromManiacWMatchBalanceParameterTempCacheService(itemManiacWMatchBalance.getClone);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void setMaxScrollExtent() {
    getDataForNamedParameterNamedStreamWState.isMaxLeftScroll = false;
    getDataForNamedParameterNamedStreamWState.isMaxRightScroll = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  void setMinScrollExtent() {
    getDataForNamedParameterNamedStreamWState.isMaxLeftScroll = true;
    getDataForNamedParameterNamedStreamWState.isMaxRightScroll = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQGetMatchBalanceWhereItsLikeMutableParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}