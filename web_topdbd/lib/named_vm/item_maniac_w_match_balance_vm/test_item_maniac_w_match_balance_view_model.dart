import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:common_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_temp_cache_service/operation_ee_maniac_w_match_balance_ee_where_named_ee_from_named_ee_parameters_temp_cache_service_and_stream_subscription/start_listening_and_cancel_listening_ee_maniac_w_match_balance_ee_from_callback_ee_parameters_temp_cache_service_and_stream_subscription.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/data_for_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_vm/i_item_maniac_w_match_balance_view_model.dart';

@immutable
final class TestItemManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForItemManiacWMatchBalanceView,
    DefaultStreamWState<DataForItemManiacWMatchBalanceView>> implements IItemManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _startListeningAndCancelListeningEEManiacWMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription =
  StartListeningAndCancelListeningEEManiacWMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription();

  // NamedUtility

  TestItemManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForItemManiacWMatchBalanceView(true,true,false,ManiacWMatchBalance("",0,0,ListMapsWMatchBalance(List.empty(growable: true)),ListManiacPerkWMatchBalance(List.empty(growable: true)),ListSurvivorPerkWMatchBalance(List.empty(growable: true))))));

  @override
  void dispose() {
    _startListeningAndCancelListeningEEManiacWMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .cancelListeningManiacWMatchBalanceParameterStreamSubscription();
    super.dispose();
  }

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    _startListeningAndCancelListeningEEManiacWMatchBalanceEEFromCallbackEEParametersTempCacheServiceAndStreamSubscription
        .startListeningManiacWMatchBalanceFromCallbackParametersTempCacheServiceAndStreamSubscription((p0) {
          getDataForNamedParameterNamedStreamWState.selectedItemManiacWMatchBalance = p0.parameter!.getClone;
          notifyStreamDataForNamedParameterNamedStreamWState();
        });
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
}