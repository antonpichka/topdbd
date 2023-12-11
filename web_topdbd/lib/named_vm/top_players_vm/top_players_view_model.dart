import 'package:common_topdbd/model/top_players/list_top_players.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/top_players_vm/data_for_top_players_view.dart';
import 'package:web_topdbd/named_vm/top_players_vm/i_top_players_view_model.dart';

@immutable
final class TopPlayersViewModel extends BaseNamedViewModel<DataForTopPlayersView,
    DefaultStreamWState<DataForTopPlayersView>> implements ITopPlayersViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TopPlayersViewModel()
      : super(DefaultStreamWState(DataForTopPlayersView(true,"1 - ∞",false,ListTopPlayers(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setValueToDropdownButton(String? value) {
    // TODO: implement setValueToDropdownButton
  }

  @override
  void refreshListTopPlayers() {
    // TODO: implement refreshListTopPlayers
  }
}