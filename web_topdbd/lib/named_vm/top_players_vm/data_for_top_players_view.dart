import 'package:common_topdbd/model/top_players/list_top_players.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/top_players_vm/enum_data_for_top_players_view.dart';

final class DataForTopPlayersView extends BaseDataForNamed<EnumDataForTopPlayersView> {
  String valueToDropdownButton;
  bool isHasReachedMax;
  ListTopPlayers listTopPlayers;

  DataForTopPlayersView(super.isLoading,this.valueToDropdownButton,this.isHasReachedMax,this.listTopPlayers);

  @override
  EnumDataForTopPlayersView get getEnumDataForNamed {
    if (isLoading) {
      return EnumDataForTopPlayersView.isLoading;
    }
    if (exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForTopPlayersView.exception;
    }
    return EnumDataForTopPlayersView.success;
  }
}