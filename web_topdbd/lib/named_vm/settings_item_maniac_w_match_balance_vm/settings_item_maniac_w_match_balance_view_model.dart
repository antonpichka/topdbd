import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_item_maniac_w_match_balance_vm/data_for_settings_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_item_maniac_w_match_balance_vm/i_settings_item_maniac_w_match_balance_view_model.dart';

@immutable
final class SettingsItemManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsItemManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsItemManiacWMatchBalanceView>> implements ISettingsItemManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsItemManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsItemManiacWMatchBalanceView(true,ManiacWMatchBalance("",0,0,ListMapsWMatchBalance(List.empty(growable: true)),ListManiacPerkWMatchBalance(List.empty(growable: true)),ListSurvivorPerkWMatchBalance(List.empty(growable: true))))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningTempCacheService() {
    // TODO: implement listeningTempCacheService
  }
}
