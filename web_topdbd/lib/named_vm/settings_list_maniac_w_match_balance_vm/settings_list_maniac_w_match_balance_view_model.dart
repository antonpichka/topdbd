import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/data_for_settings_list_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maniac_w_match_balance_vm/i_settings_list_maniac_w_match_balance_view_model.dart';

@immutable
final class SettingsListManiacWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListManiacWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListManiacWMatchBalanceView>> implements ISettingsListManiacWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsListManiacWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListManiacWMatchBalanceView(true,ListStrings(List.empty(growable: true)),true,false,"",ListManiacWMatchBalance(List.empty(growable: true)))));

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
  void onTapItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    // TODO: implement onTapItemToListView
  }

  @override
  void setMaxScrollExtent() {
    // TODO: implement setMaxScrollExtent
  }

  @override
  void setMinScrollExtent() {
    // TODO: implement setMinScrollExtent
  }

  @override
  void deleteItemToListView(ManiacWMatchBalance itemManiacWMatchBalance) {
    // TODO: implement deleteItemToListView
  }

  @override
  void addItemsBottomSheet() {
    // TODO: implement addItemsBottomSheet
  }

  @override
  void closeBottomSheet() {
    // TODO: implement closeBottomSheet
  }
}