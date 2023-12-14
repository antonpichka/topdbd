import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/top_players/list_top_players.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/top_players_vm/enum_data_for_top_players_view.dart';

final class DataForTopPlayersView extends BaseDataForNamed<EnumDataForTopPlayersView> {
  bool isLoadingWSetValueToDropdownButton;
  bool isSpamWRefreshListTopPlayers;
  bool isHasReachedMax;
  ListTopPlayers listTopPlayers;
  String valueToDropdownButton;
  final ListTopPlayers _listTopPlayersWFullData;
  String _valueToDropdownButtonWPre;

  DataForTopPlayersView(super.isLoading,this.isLoadingWSetValueToDropdownButton,this.isSpamWRefreshListTopPlayers,this.isHasReachedMax,this.listTopPlayers)
      : valueToDropdownButton = getListStringWhereValueToDropdownButton[0],
        _listTopPlayersWFullData = listTopPlayers.getClone,
        _valueToDropdownButtonWPre = getListStringWhereValueToDropdownButton[0];

  static List<String> get getListStringWhereValueToDropdownButton {
    return [
      "1 - ∞",
      "25 - ∞"
    ];
  }

  @override
  EnumDataForTopPlayersView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForTopPlayersView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForTopPlayersView.exception;
    }
    if(isLoadingWSetValueToDropdownButton) {
      return EnumDataForTopPlayersView.isLoadingWSetValueToDropdownButton;
    }
    if(isSpamWRefreshListTopPlayers) {
      return EnumDataForTopPlayersView.isSpamWRefreshListTopPlayers;
    }
    if(isWhereEqualsOneItemWListStringAndLessThanWEqualFromNumberParametersTwo(24)) {
      return EnumDataForTopPlayersView.lessThanTwentyFiveByListTopPlayers;
    }
    if(listTopPlayers.listModel.isEmpty) {
      return EnumDataForTopPlayersView.isEmptyByListTopPlayers;
    }
    return EnumDataForTopPlayersView.success;
  }

  int getIntWhereSubtractFromNumberParameterListTopPlayers(int number) {
    return number - listTopPlayers.listModel.length;
  }

  void setFromValueParametersFour(String value) {
    _valueToDropdownButtonWPre = valueToDropdownButton;
    valueToDropdownButton = value;
    listTopPlayers = _listTopPlayersWFullData.getClone;
  }

  void setParametersValueToDropdownButtonAndValueToDropdownButtonWPre() {
    valueToDropdownButton = _valueToDropdownButtonWPre;
  }

  void insertTopPlayersFromListStatsAndListDiscordUserFirestoreAndListCountryParametersTwo(ListStats listStats,ListDiscordUserFirestore listDiscordUserFirestore,ListCountry listCountry) {
    listTopPlayers
        .insertFromListStatsAndListDiscordUserFirestoreAndListCountry(listStats, listDiscordUserFirestore, listCountry);
    _listTopPlayersWFullData
        .insertFromListStatsAndListDiscordUserFirestoreAndListCountry(listStats, listDiscordUserFirestore, listCountry);
  }

  void insertAndDeleteTopPlayersFromFourParameterListTopPlayers(ListStats listStats,ListDiscordUserFirestore listDiscordUserFirestore,ListCountry listCountry,int number) {
    insertTopPlayersFromListStatsAndListDiscordUserFirestoreAndListCountryParametersTwo(listStats,listDiscordUserFirestore,listCountry);
    listTopPlayers.deleteWhereRangeOrClearFromNumberParameterListModel(number);
  }

  void deleteWhereRangeFromEndParameterListTopPlayers(int end) {
    listTopPlayers
        .listModel
        .removeRange(0,end);
  }

  bool isWhereEqualsFromValueParameterValueToDropdownButton(String value) {
    return valueToDropdownButton == value;
  }

  bool isWhereEqualsOneItemWListStringParameterValueToDropdownButton() {
    return valueToDropdownButton == getListStringWhereValueToDropdownButton[1];
  }

  bool isWhereEqualsOneItemWListStringAndLessThanWEqualFromNumberParametersTwo(int number) {
    return valueToDropdownButton == getListStringWhereValueToDropdownButton[1]
        && listTopPlayers.listModel.length <= number;
  }

  bool isWhereLengthLessThanFromNumberParameterListTopPlayers(int number) {
    return listTopPlayers.listModel.length < number;
  }
}