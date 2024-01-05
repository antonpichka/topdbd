import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/data_for_settings_save_changes_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/i_settings_save_changes_to_match_balance_view_model.dart';

@immutable
final class SettingsSaveChangesToMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsSaveChangesToMatchBalanceView,
    DefaultStreamWState<DataForSettingsSaveChangesToMatchBalanceView>> implements ISettingsSaveChangesToMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsSaveChangesToMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsSaveChangesToMatchBalanceView(true,MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),MatchBalance(0,0,ListManiacWMatchBalance(List.empty(growable: true))),"")));

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
  void onPressedSaveChanges(Function() callbackSuccess, Function(String) callbackException) {
    // TODO: implement onPressedSaveChanges
  }
}
