import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/data_for_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_vm/i_settings_necessary_length_picked_maniac_perk_by_maniac_w_match_balance_view_model.dart';

@immutable
final class SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView>> implements ISettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceViewModel(String nameByManiacWMatchBalance,int necessaryLengthPickedManiacPerkByManiacWMatchBalance)
      : super(DefaultStreamWState(DataForSettingsNecessaryLengthPickedManiacPerkByManiacWMatchBalanceView(true,nameByManiacWMatchBalance,necessaryLengthPickedManiacPerkByManiacWMatchBalance)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setNecessaryLengthPickedManiacPerkByManiacWMatchBalance(String? value) {
    // TODO: implement onChangedToDropdownButton
  }
}