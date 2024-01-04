import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/data_for_settings_list_survivor_perks_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_survivor_perks_w_match_balance_vm/i_settings_list_survivor_perks_w_match_balance_view_model.dart';

@immutable
final class SettingsListSurvivorPerksWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListSurvivorPerksWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListSurvivorPerksWMatchBalanceView>> implements ISettingsListSurvivorPerksWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsListSurvivorPerksWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListSurvivorPerksWMatchBalanceView(true,"",ListSurvivorPerkWMatchBalance(List.empty(growable: true)),ListStrings(List.empty(growable: true)),true,false)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void addItemsBottomSheet() {
    // TODO: implement addItemsBottomSheet
  }

  @override
  void closeBottomSheet() {
    // TODO: implement closeBottomSheet
  }

  @override
  void deleteItemToListView(SurvivorPerkWMatchBalance itemSurvivorPerkWMatchBalance) {
    // TODO: implement deleteItemToListView
  }

  @override
  void listeningTempCacheService() {
    // TODO: implement listeningTempCacheService
  }

  @override
  void setMaxScrollExtent() {
    // TODO: implement setMaxScrollExtent
  }

  @override
  void setMinScrollExtent() {
    // TODO: implement setMinScrollExtent
  }
}
