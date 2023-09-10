import 'dart:async';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named_to_maniac.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'dart:io';

enum EnumDataForStagePickAndBanTestMain {
  isLoading,
  isCompletedMatch,
  myUniqueIdByUserWhereFirst,
  myUniqueIdByUserWhereSecond
}

enum EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst {
  itsMyTurnsBanManiacInTheFirstStage,
  itsMyTurnsPickManiacInTheFirstStage,
  itsMyTurnsBanMapsToManiacInTheFirstStage,
  itsEnemyTurnBanManiacInTheFirstStage,
  itsEnemyTurnPickManiacInTheFirstStage
}

enum EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond {

}

final class DataForStagePickAndBanTestMain {
  bool isLoading;
  User user;
  Matches matches;

  DataForStagePickAndBanTestMain(this.isLoading,this.user,this.matches);

  EnumDataForStagePickAndBanTestMain get getEnumDataForStagePickAndBanTestMain {
    if(isLoading) {
      return EnumDataForStagePickAndBanTestMain.isLoading;
    }
    if(matches.isCompleted) {
      return EnumDataForStagePickAndBanTestMain.isCompletedMatch;
    }
    if(user.uniqueId == matches.uniqueIdByUserWhereFirst) {
      return EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereFirst;
    }
    return EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereSecond;
  }

  EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst get getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst {
    if(matches.enumBanOrPickNamedToManiac == EnumBanOrPickNamedToManiac.banMapsToManiac) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBanMapsToManiacInTheFirstStage;
    }
    if(matches.isStageBanOrPickForUniqueIdByUserWhereFirstAndIsNotStagePickAndIsNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBanManiacInTheFirstStage;
    }
    if(matches.isStageBanOrPickForUniqueIdByUserWhereFirstAndIsStagePickAndIsNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiacInTheFirstStage;
    }
    if(matches.isNotStageBanOrPickForUniqueIdByUserWhereFirstAndIsNotStagePickAndIsNumberOfBannedManiacsLessTotalNumberOfBannedManiacsInTheFirstStageParametersMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnBanManiacInTheFirstStage;
    }
    if(matches.isNotStageBanOrPickForUniqueIdByUserWhereFirstAndIsStagePickAndIsNumberOfPickManiacsLessTotalNumberOfPickManiacsInTheFirstStageParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiacInTheFirstStage;
    }

  }
}

final StreamController<DataForStagePickAndBanTestMain> _streamControllerForDataForStagePickAndBanTestMain = StreamController.broadcast();

Future<void> main() async {
  /// INIT LISTEN
  _streamControllerForDataForStagePickAndBanTestMain
      .stream
      .listen((event) {
        // Create BOTUserEvent();
         _buildWidget(event);
      });
  /// INIT Object
  final user = _getUser;
  final matchBalance = _getMatchBalance;
  final matches = _getMatches(matchBalance.getCloneModel);
  final dataForStagePickAndBanTestMain = DataForStagePickAndBanTestMain(true,user,matches);
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(dataForStagePickAndBanTestMain);
  await Future.delayed(const Duration(milliseconds: 2000));
  dataForStagePickAndBanTestMain.isLoading = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(dataForStagePickAndBanTestMain);
}

void _buildWidget(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain) {
  switch(dataForStagePickAndBanTestMain.getEnumDataForStagePickAndBanTestMain) {
    case EnumDataForStagePickAndBanTestMain.isLoading:
      debugPrint("IsLoading");
      break;
    case EnumDataForStagePickAndBanTestMain.isCompletedMatch:
      debugPrint("IsCompletedMatch");
      break;
    case EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereFirst:
      debugPrint("MyUniqueIdByUserWhereFirst");
      _buildWidgetWhereMyUniqueIdByUserWhereFirst(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereSecond:
      debugPrint("MyUniqueIdByUserWhereSecond");
      _buildWidgetWhereMyUniqueIdByUserWhereSecond(dataForStagePickAndBanTestMain);
      break;
  }
}

void _buildWidgetWhereMyUniqueIdByUserWhereFirst(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain) {

}

void _buildWidgetWhereMyUniqueIdByUserWhereSecond(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain) {
}

/*void _listenForUniqueIdByUserWhereFirst(String uniqueIdByUserWhereFirst, Matches matches) {
  String? name = stdin.readLineSync();
  _printTextLogAction(textLogAction);
}

void _listenForUniqueIdByUserWhereSecond(String uniqueIdByUserWhereSecond, Matches matches) {
  String? name = stdin.readLineSync();
  _printTextLogAction(textLogAction);
}*/

void _printTextLogAction(String textLogAction) {
  debugPrint(textLogAction);
}

User get _getUser {
  return User("51d1a9f2-4fb0-11ee-be56-0242ac120002", DateTime.now());
}

MatchBalance get _getMatchBalance {
  /// 6
  return MatchBalance(1,3,false,ListManiacWhereMatchBalance([
    ManiacWhereMatchBalance(
        const Maniac("Anna","assets/icon/dbd/maniac/maniac_anna.png"),
        1,
        1,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png")
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Trapper", "assets/icon/dbd/maniac/maniac_trapper.png"),
        2,
        2,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Mor", "assets/icon/dbd/maniac/maniac_mor.png"),
        2,
        2,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Nurse", "assets/icon/dbd/maniac/maniac_nurse.png"),
        2,
        2,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Kolya", "assets/icon/dbd/maniac/maniac_kolya.png"),
        2,
        2,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Doctor", "assets/icon/dbd/maniac/maniac_doctor.png"),
        2,
        2,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
  ]));
}

Matches _getMatches(MatchBalance matchBalance) {
  return Matches(
      "409419d6-4fb0-11ee-be56-0242ac120002",
      DateTime.now(),
      false,
      EnumBanOrPickNamedToManiac.off.name,
      "",
      matchBalance,
      "51d1a9f2-4fb0-11ee-be56-0242ac120002",
      "5f8cd3aa-4fb0-11ee-be56-0242ac120002",
      false,
      false,
      EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereSecond.name,
      ListBanManiacWhereMatches(List.empty(growable: true)),
      ListBanManiacWhereMatches(List.empty(growable: true)),
      ListPickManiacWhereMatches(List.empty(growable: true)),
      ListPickManiacWhereMatches(List.empty(growable: true)),
      0,
      0);
}