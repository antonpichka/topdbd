import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/top_players/list_top_players.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_utility/algorithms_utility.dart';
import 'package:web_topdbd/named_vm/top_players_vm/data_for_top_players_view.dart';
import 'package:web_topdbd/named_vm/top_players_vm/i_top_players_view_model.dart';

@immutable
final class TestTopPlayersViewModel extends BaseNamedViewModel<DataForTopPlayersView,
    DefaultStreamWState<DataForTopPlayersView>> implements ITopPlayersViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TestTopPlayersViewModel()
      : super(DefaultStreamWState(DataForTopPlayersView(true,false,false,false,ListTopPlayers(List.empty(growable: true)))));

  @override
  Future<String> init() async {
    /// getListStatsWhereOrderByDescWRatingPointsFromLimitParameterFirebaseFirestoreService (20)
    final listStats = ListStats<Stats>(
        List.of([
          const Stats(
              "18022712-959f-11ee-b9d1-0242ac120002",
              10,
              12,
              10,
              500),
          const Stats(
              "4d41ada8-959f-11ee-b9d1-0242ac120002",
              10,
              5,
              0,
              450),
          const Stats(
              "6190ec42-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              450),
          const Stats(
              "7eb5a664-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              430),
          const Stats(
              "929fe8f6-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              420),
          const Stats(
              "acbfb59a-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              420),
          const Stats(
              "c4017cca-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              420),
          const Stats(
              "d92c1434-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              419),
          const Stats(
              "e853dbea-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              418),
          const Stats(
              "fd7861e4-959f-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              418),
          const Stats(
              "1408e258-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              417),
          const Stats(
              "2b6512b4-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              416),
          const Stats(
              "42420032-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              415),
          const Stats(
              "543a4c90-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              414),
          const Stats(
              "63d2c56a-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              413),
          const Stats(
              "74eded70-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              400),
          const Stats(
              "8b088304-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              399),
          const Stats(
              "9d5bb24c-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              395),
          const Stats(
              "b212c202-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              335),
          const Stats(
              "c0ff038e-95a0-11ee-b9d1-0242ac120002",
              10,
              0,
              0,
              320),
        ]));
    final isEmpty = listStats.listModel.isEmpty;
    if(isEmpty) {
      return _firstQQInitQQIsEmpty();
    }
    /// getListDiscordUserFirestoreFromListStringWUniqueIdByUserParameterFirebaseFirestoreService (ListStats.getListStringWhereAdditionUniqueIdByUserParameterListModel)
    final listDiscordUserFirestore = ListDiscordUserFirestore<DiscordUserFirestore>(
        List.of([
          const DiscordUserFirestore(
              "0fb89d2a-959f-11ee-b9d1-0242ac120002",
              "18022712-959f-11ee-b9d1-0242ac120002",
              "vicar32",
              "Vicar"),
          const DiscordUserFirestore(
              "48dbdda6-959f-11ee-b9d1-0242ac120002",
              "4d41ada8-959f-11ee-b9d1-0242ac120002",
              "joker",
              "Joker"),
          const DiscordUserFirestore(
              "5d89ad96-959f-11ee-b9d1-0242ac120002",
              "6190ec42-959f-11ee-b9d1-0242ac120002",
              "powerispower",
              "Power"),
          const DiscordUserFirestore(
              "7b9b3c96-959f-11ee-b9d1-0242ac120002",
              "7eb5a664-959f-11ee-b9d1-0242ac120002",
              "gamingpro",
              "pro"),
          const DiscordUserFirestore(
              "8efdc88a-959f-11ee-b9d1-0242ac120002",
              "929fe8f6-959f-11ee-b9d1-0242ac120002",
              "papich",
              "Arthas"),
          const DiscordUserFirestore(
              "a876cc26-959f-11ee-b9d1-0242ac120002",
              "acbfb59a-959f-11ee-b9d1-0242ac120002",
              "filantrop",
              "opfilantrop"),
          const DiscordUserFirestore(
              "bbe63922-959f-11ee-b9d1-0242ac120002",
              "c4017cca-959f-11ee-b9d1-0242ac120002",
              "ex1le",
              "exe"),
          const DiscordUserFirestore(
              "d38589d4-959f-11ee-b9d1-0242ac120002",
              "d92c1434-959f-11ee-b9d1-0242ac120002",
              "dexter",
              "DexterMorgan"),
          const DiscordUserFirestore(
              "e471b3f8-959f-11ee-b9d1-0242ac120002",
              "e853dbea-959f-11ee-b9d1-0242ac120002",
              "sex",
              "joskiy"),
          const DiscordUserFirestore(
              "f89c50c2-959f-11ee-b9d1-0242ac120002",
              "fd7861e4-959f-11ee-b9d1-0242ac120002",
              "opmizantrop",
              "op"),
          const DiscordUserFirestore(
              "0fe1bede-95a0-11ee-b9d1-0242ac120002",
              "1408e258-95a0-11ee-b9d1-0242ac120002",
              "width",
              "NoHeight"),
          const DiscordUserFirestore(
              "278ea614-95a0-11ee-b9d1-0242ac120002",
              "2b6512b4-95a0-11ee-b9d1-0242ac120002",
              "nagibator228",
              "nagib"),
          const DiscordUserFirestore(
              "3e139a52-95a0-11ee-b9d1-0242ac120002",
              "42420032-95a0-11ee-b9d1-0242ac120002",
              "godota",
              "dota"),
          const DiscordUserFirestore(
              "507a777e-95a0-11ee-b9d1-0242ac120002",
              "543a4c90-95a0-11ee-b9d1-0242ac120002",
              "roblox",
              "Roblox"),
          const DiscordUserFirestore(
              "6029f79e-95a0-11ee-b9d1-0242ac120002",
              "63d2c56a-95a0-11ee-b9d1-0242ac120002",
              "win1",
              "Winner"),
          const DiscordUserFirestore(
              "71197250-95a0-11ee-b9d1-0242ac120002",
              "74eded70-95a0-11ee-b9d1-0242ac120002",
              "hohma",
              "hit"),
          const DiscordUserFirestore(
              "88172ba0-95a0-11ee-b9d1-0242ac120002",
              "8b088304-95a0-11ee-b9d1-0242ac120002",
              "hit_ledger",
              "Ledger"),
          const DiscordUserFirestore(
              "9986204e-95a0-11ee-b9d1-0242ac120002",
              "9d5bb24c-95a0-11ee-b9d1-0242ac120002",
              "qweop",
              "qwe"),
          const DiscordUserFirestore(
              "ab3ffca6-95a0-11ee-b9d1-0242ac120002",
              "b212c202-95a0-11ee-b9d1-0242ac120002",
              "qwerty",
              "dex"),
          const DiscordUserFirestore(
              "bc553c2c-95a0-11ee-b9d1-0242ac120002",
              "c0ff038e-95a0-11ee-b9d1-0242ac120002",
              "mami",
              "Mame")
        ]));
    /// getListCountryFromListStringWUniqueIdByUserParameterFirebaseFirestoreService (ListStats.getListStringWhereAdditionUniqueIdByUserParameterListModel)
    final listCountry = ListCountry<Country>(
        List.of([
          const Country(
              "18022712-959f-11ee-b9d1-0242ac120002",
              "UA"),
          const Country(
              "4d41ada8-959f-11ee-b9d1-0242ac120002",
              "RU"),
          const Country(
              "6190ec42-959f-11ee-b9d1-0242ac120002",
              "GB"),
          const Country(
              "7eb5a664-959f-11ee-b9d1-0242ac120002",
              "US"),
          const Country(
              "929fe8f6-959f-11ee-b9d1-0242ac120002",
              "US"),
          const Country(
              "acbfb59a-959f-11ee-b9d1-0242ac120002",
              "RU"),
          const Country(
              "c4017cca-959f-11ee-b9d1-0242ac120002",
              "US"),
          const Country(
              "d92c1434-959f-11ee-b9d1-0242ac120002",
              "FR"),
          const Country(
              "e853dbea-959f-11ee-b9d1-0242ac120002",
              "FR"),
          const Country(
              "fd7861e4-959f-11ee-b9d1-0242ac120002",
              "UA"),
          const Country(
              "1408e258-95a0-11ee-b9d1-0242ac120002",
              "BY"),
          const Country(
              "2b6512b4-95a0-11ee-b9d1-0242ac120002",
              "BY"),
          const Country(
              "42420032-95a0-11ee-b9d1-0242ac120002",
              "IT"),
          const Country(
              "543a4c90-95a0-11ee-b9d1-0242ac120002",
              "IT"),
          const Country(
              "63d2c56a-95a0-11ee-b9d1-0242ac120002",
              "US"),
          const Country(
              "74eded70-95a0-11ee-b9d1-0242ac120002",
              "US"),
          const Country(
              "8b088304-95a0-11ee-b9d1-0242ac120002",
              "GB"),
          const Country(
              "9d5bb24c-95a0-11ee-b9d1-0242ac120002",
              "GB"),
          const Country(
              "b212c202-95a0-11ee-b9d1-0242ac120002",
              "GB"),
          const Country(
              "c0ff038e-95a0-11ee-b9d1-0242ac120002",
              "GB")
        ]));
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.isHasReachedMax = listStats.isWhereLengthLessFromNumberParameterListModel(20);
    getDataForNamedParameterNamedStreamWState
        .insertTopPlayersFromListStatsAndListDiscordUserFirestoreAndListCountryParametersTwo(listStats,listDiscordUserFirestore,listCountry);
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  Future<void> setValueToDropdownButton(String? value) async {
    if(getDataForNamedParameterNamedStreamWState.isHasReachedMax) {
      return;
    }
    if(getDataForNamedParameterNamedStreamWState.isLoadingWSetValueToDropdownButton) {
      return;
    }
    if(getDataForNamedParameterNamedStreamWState.isWhereEqualsFromValueParameterValueToDropdownButton(value ?? "")) {
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoadingWSetValueToDropdownButton = true;
    getDataForNamedParameterNamedStreamWState.setFromValueParametersFour(value ?? "");
    notifyStreamDataForNamedParameterNamedStreamWState();
    final isWhereEqualsOneItemWListStringParameterValueToDropdownButton = getDataForNamedParameterNamedStreamWState
        .isWhereEqualsOneItemWListStringParameterValueToDropdownButton();
    if(isWhereEqualsOneItemWListStringParameterValueToDropdownButton) {
      _firstQQSetValueToDropdownButtonQQIsWhereEqualsOneItemWListStringParameterValueToDropdownButton();
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoadingWSetValueToDropdownButton = false;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  Future<void> refreshListTopPlayers() async {
    await Future.delayed(const Duration(seconds: 1));
    if(getDataForNamedParameterNamedStreamWState.isHasReachedMax) {
      return;
    }
    if(getDataForNamedParameterNamedStreamWState.isSpamWRefreshListTopPlayers) {
      return;
    }
    getDataForNamedParameterNamedStreamWState.isSpamWRefreshListTopPlayers = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
    final uniqueIdByUser = getDataForNamedParameterNamedStreamWState
        .listTopPlayers
        .listModel
        .last
        .stats
        .uniqueIdByUser;
    final ratingPoints = getDataForNamedParameterNamedStreamWState
        .listTopPlayers
        .listModel
        .last
        .stats
        .ratingPoints;
    final stringWhereV1ByUuid = AlgorithmsUtility.getStringWhereV1ByUuid;
    /// getListStatsWhereLessThanWEqualAndNotEqualAndOrderByDescWRatingPointsFromLimitAndUniqueIdByUserAndRatingPointsParameterFirebaseFirestoreService (20,uniqueIdByUser,ratingPoints)
    final listStats = ListStats(List.generate(
        20, (index) {
          if(index > 2) {
            return Stats(
                "$stringWhereV1ByUuid-$index",
                10,
                0,
                0,
                ratingPoints);
          }
          return Stats(
              "$stringWhereV1ByUuid-$index",
              10,
              0,
              0,
              ratingPoints-index);
        }));
    final isEmpty = listStats
        .listModel
        .isEmpty;
    if(isEmpty) {
      _firstQQRefreshListTopPlayersQQIsEmpty();
      return;
    }
    /// getListDiscordUserFirestoreFromListStringWUniqueIdByUserParameterFirebaseFirestoreService (ListStats.getListStringWhereAdditionUniqueIdByUserParameterListModel)
    final listDiscordUserFirestore = ListDiscordUserFirestore(List.generate(
        20, (index) => DiscordUserFirestore(
        "$stringWhereV1ByUuid-$index",
        "$stringWhereV1ByUuid-$index",
        "unknown-$stringWhereV1ByUuid-$index",
        "unknown-$stringWhereV1ByUuid-$index")));
    /// getListCountryFromListStringWUniqueIdByUserParameterFirebaseFirestoreService (ListStats.getListStringWhereAdditionUniqueIdByUserParameterListModel)
    final listCountry = ListCountry(List.generate(
        20, (index) => Country(
        "$stringWhereV1ByUuid-$index",
        "US")));
    getDataForNamedParameterNamedStreamWState.isSpamWRefreshListTopPlayers = false;
    getDataForNamedParameterNamedStreamWState.isHasReachedMax = listStats.isWhereLengthLessFromNumberParameterListModel(20);
    getDataForNamedParameterNamedStreamWState.insertTopPlayersFromListStatsAndListDiscordUserFirestoreAndListCountryParametersTwo(listStats,listDiscordUserFirestore,listCountry);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Future<String> _firstQQInitQQIsEmpty() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.isHasReachedMax = true;
    return KeysSuccessUtility.sUCCESS;
  }

  void _firstQQSetValueToDropdownButtonQQIsWhereEqualsOneItemWListStringParameterValueToDropdownButton() {
    final isWhereLengthLessThanFromNumberParameterListTopPlayers = getDataForNamedParameterNamedStreamWState
        .isWhereLengthLessThanFromNumberParameterListTopPlayers(44);
    if(isWhereLengthLessThanFromNumberParameterListTopPlayers) {
      _firstBranchOneQQSetValueToDropdownButtonQQIsWhereEqualsOneItemWListStringParameterValueToDropdownButton();
      return;
    }
    getDataForNamedParameterNamedStreamWState.isLoadingWSetValueToDropdownButton = false;
    getDataForNamedParameterNamedStreamWState.deleteWhereRangeFromEndParameterListTopPlayers(24);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstBranchOneQQSetValueToDropdownButtonQQIsWhereEqualsOneItemWListStringParameterValueToDropdownButton() {
    final uniqueIdByUser = getDataForNamedParameterNamedStreamWState
        .listTopPlayers
        .listModel
        .last
        .stats
        .uniqueIdByUser;
    final ratingPoints = getDataForNamedParameterNamedStreamWState
        .listTopPlayers
        .listModel
        .last
        .stats
        .ratingPoints;
    final intWhereSubtractFromNumberParameterListTopPlayers = getDataForNamedParameterNamedStreamWState
        .getIntWhereSubtractFromNumberParameterListTopPlayers(44);
    final stringWhereV1ByUuid = AlgorithmsUtility.getStringWhereV1ByUuid;
    /// getListStatsWhereLessThanWEqualAndNotEqualAndOrderByDescWRatingPointsFromLimitAndUniqueIdByUserAndRatingPointsParameterFirebaseFirestoreService (intWhereSubtractFromNumberParameterListTopPlayers,uniqueIdByUser,ratingPoints)
    final listStats = ListStats(List.generate(
        intWhereSubtractFromNumberParameterListTopPlayers,
            (index) {
              if(index > 2) {
                return Stats(
                    "$stringWhereV1ByUuid-$index",
                    10,
                    0,
                    0,
                    ratingPoints);
              }
              return Stats(
                  "$stringWhereV1ByUuid-$index",
                  10,
                  0,
                  0,
                  ratingPoints-index);
            }));
    final isEmpty = listStats
        .listModel
        .isEmpty;
    if(isEmpty) {
      _firstBranchOneBranchOneQQSetValueToDropdownButtonQQIsWhereEqualsOneItemWListStringParameterValueToDropdownButton();
      return;
    }
    /// getListDiscordUserFirestoreFromListStringWUniqueIdByUserParameterFirebaseFirestoreService (ListStats.getListStringWhereAdditionUniqueIdByUserParameterListModel)
    final listDiscordUserFirestore = ListDiscordUserFirestore(List.generate(
        intWhereSubtractFromNumberParameterListTopPlayers,
            (index) => DiscordUserFirestore(
                "$stringWhereV1ByUuid-$index",
                "$stringWhereV1ByUuid-$index",
                "unknown-$stringWhereV1ByUuid-$index",
                "unknown-$stringWhereV1ByUuid-$index")));
    /// getListCountryFromListStringWUniqueIdByUserParameterFirebaseFirestoreService (ListStats.getListStringWhereAdditionUniqueIdByUserParameterListModel)
    final listCountry = ListCountry(List.generate(
        intWhereSubtractFromNumberParameterListTopPlayers,
            (index) => Country(
                "$stringWhereV1ByUuid-$index",
                "US")));
    getDataForNamedParameterNamedStreamWState.isLoadingWSetValueToDropdownButton = false;
    getDataForNamedParameterNamedStreamWState.isHasReachedMax = listStats.isWhereLengthLessFromNumberParameterListModel(intWhereSubtractFromNumberParameterListTopPlayers);
    getDataForNamedParameterNamedStreamWState.insertAndDeleteTopPlayersFromFourParameterListTopPlayers(listStats,listDiscordUserFirestore,listCountry,25);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstBranchOneBranchOneQQSetValueToDropdownButtonQQIsWhereEqualsOneItemWListStringParameterValueToDropdownButton() {
    getDataForNamedParameterNamedStreamWState.isLoadingWSetValueToDropdownButton = false;
    getDataForNamedParameterNamedStreamWState.isHasReachedMax = true;
    getDataForNamedParameterNamedStreamWState
        .listTopPlayers
        .deleteWhereRangeOrClearFromNumberParameterListModel(25);
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  void _firstQQRefreshListTopPlayersQQIsEmpty() {
    getDataForNamedParameterNamedStreamWState.isSpamWRefreshListTopPlayers = false;
    getDataForNamedParameterNamedStreamWState.isHasReachedMax = true;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}