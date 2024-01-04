import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/data_for_settings_list_maps_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_list_maps_w_match_balance_vm/i_settings_list_maps_w_match_balance_view_model.dart';

@immutable
final class SettingsListMapsWMatchBalanceViewModel extends BaseNamedViewModel<DataForSettingsListMapsWMatchBalanceView,
    DefaultStreamWState<DataForSettingsListMapsWMatchBalanceView>> implements ISettingsListMapsWMatchBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  SettingsListMapsWMatchBalanceViewModel()
      : super(DefaultStreamWState(DataForSettingsListMapsWMatchBalanceView(true,"",ListMapsWMatchBalance(List.empty(growable: true)),ListStrings(List.empty(growable: true)),true,false)));

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
  void addItemsBottomSheet() {
    // TODO: implement addItemsBottomSheet
  }

  @override
  void closeBottomSheet() {
    // TODO: implement closeBottomSheet
  }

  @override
  void deleteItemToListView(MapsWMatchBalance itemMapsWMatchBalance) {
    // TODO: implement deleteItemToListView
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