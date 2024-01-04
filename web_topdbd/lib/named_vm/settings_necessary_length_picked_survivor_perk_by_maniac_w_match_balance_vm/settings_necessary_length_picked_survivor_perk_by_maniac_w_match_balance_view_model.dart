import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_vm/data_for_settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_vm/i_settings_necessary_length_picked_survivor_perk_by_maniac_w_match_balance_view_model.dart';

@immutable
final class SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView>> implements ISettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsNecessaryLengthPickedSurvivorPerkByManiacWMatchBalanceView(true,"",0)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setNecessaryLengthPickedSurvivorPerkByManiacWMatchBalance(String? value) {
    // TODO: implement setNecessaryLengthPickedSurvivorPerkByManiacWMatchBalance
  }
}