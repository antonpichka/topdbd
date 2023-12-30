import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/update_ee_maniac_w_match_balance_ee_where_stream_notification_is_possible_ee_from_maniac_w_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_match_balance_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/get_ee_match_balance_ee_parameter_temp_cache_service.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/data_for_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/i_list_maniac_w_match_balance_view_model.dart';

@immutable
final class TestListManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForListManiacWMatchBalanceView,
    DefaultStreamWState<DataForListManiacWMatchBalanceView>> implements IListManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEMatchBalanceEEParameterTempCacheService =
  GetEEMatchBalanceEEParameterTempCacheService();
  final _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService =
  UpdateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService();

  // NamedUtility

  TestListManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForListManiacWMatchBalanceView(true,true,false,MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),"")));

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
    getDataForNamedParameterNamedStreamWState.matchBalance = getMatchBalanceParameterTempCacheService.parameter!.getClone;
    return KeysSuccessUtility.sUCCESS;
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

  @override
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    getDataForNamedParameterNamedStreamWState
        .selectedItemManiacWMatchBalance = itemManiacWMatchBalance.name;
    _updateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService
        .updateManiacWMatchBalanceWhereStreamNotificationIsPossibleFromManiacWMatchBalanceParameterTempCacheService(itemManiacWMatchBalance);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQGetMatchBalanceParameterTempCacheService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}