import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/data_for_settings_number_of_rounds_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_number_of_rounds_to_match_balance_vm/i_settings_number_of_rounds_to_match_balance_view_model.dart';

@immutable
final class SettingsNumberOfRoundsToMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsNumberOfRoundsToMatchBalanceView,
    DefaultStreamWState<DataForSettingsNumberOfRoundsToMatchBalanceView>> implements ISettingsNumberOfRoundsToMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsNumberOfRoundsToMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsNumberOfRoundsToMatchBalanceView(true,0)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setNumberOfRoundsByMatchBalance(String strNumberOfRoundsByMatchBalance) {
    // TODO: implement setNumberOfRoundsByMatchBalance
  }
}
