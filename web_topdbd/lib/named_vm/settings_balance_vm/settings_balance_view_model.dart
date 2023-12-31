import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/data_for_settings_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_balance_vm/i_settings_balance_view_model.dart';

@immutable
final class SettingsBalanceViewModel extends BaseNamedViewModel<DataForSettingsBalanceView,
    DefaultStreamWState<DataForSettingsBalanceView>> implements ISettingsBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsBalanceView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}