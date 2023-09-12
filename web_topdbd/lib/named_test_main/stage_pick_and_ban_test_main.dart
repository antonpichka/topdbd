import 'dart:async';
import 'dart:io';
import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/ban_maps_where_matches/list_ban_maps_where_matches.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_where_matches/list_pick_maniac_perk_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/pick_maps_where_matches/pick_maps_where_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_where_matches/list_pick_survivor_perk_where_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

enum EnumDataForStagePickAndBanTestMain {
  isLoading,
  isCompletedMatch,
  myUniqueIdByUserWhereFirst,
  myUniqueIdByUserWhereSecond
}

enum EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst {
  itsMyTurnsBanManiac,
  itsMyTurnsPickManiac,
  itsMyTurnsBansMapsToManiac,
  itsMyTurnsPickManiacPerkToManiac,
  itsMyTurnsPickSurvivorPerkToManiac,
  itsEnemyTurnBanManiac,
  itsEnemyTurnPickManiac,
  itsEnemyBansMapsToManiac,
  itsEnemyPickManiacPerkToManiac,
  itsEnemyPickSurvivorPerkToManiac,
  ready
}

enum EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond {
  itsMyTurnsBanManiac,
  itsMyTurnsPickManiac,
  itsMyTurnsBansMapsToManiac,
  itsMyTurnsPickManiacPerkToManiac,
  itsMyTurnsPickSurvivorPerkToManiac,
  itsEnemyTurnBanManiac,
  itsEnemyTurnPickManiac,
  itsEnemyBansMapsToManiac,
  itsEnemyPickManiacPerkToManiac,
  itsEnemyPickSurvivorPerkToManiac,
  ready
}

final class DataForStagePickAndBanTestMain {
  bool isLoading;
  bool isLoadingForButton;
  User user;
  Matches matches;

  DataForStagePickAndBanTestMain(this.isLoading,this.isLoadingForButton,this.user,this.matches);

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
    if(matches.isTrueAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBanManiac;
    }
    if(matches.isTrueAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiac;
    }
    if(matches.isTrueAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBansMapsToManiac;
    }
    if(matches.isTrueAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiacPerkToManiac;
    }
    if(matches.isTrueAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickSurvivorPerkToManiac;
    }
    if(matches.isFalseAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnBanManiac;
    }
    if(matches.isFalseAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiac;
    }
    if(matches.isFalseAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyBansMapsToManiac;
    }
    if(matches.isFalseAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickManiacPerkToManiac;
    }
    if(matches.isFalseAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickSurvivorPerkToManiac;
    }
    return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.ready;
  }

  EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond get getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond {
    if(matches.isFalseAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBanManiac;
    }
    if(matches.isFalseAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiac;
    }
    if(matches.isFalseAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBansMapsToManiac;
    }
    if(matches.isFalseAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiacPerkToManiac;
    }
    if(matches.isFalseAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickSurvivorPerkToManiac;
    }
    if(matches.isTrueAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnBanManiac;
    }
    if(matches.isTrueAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnPickManiac;
    }
    if(matches.isTrueAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyBansMapsToManiac;
    }
    if(matches.isTrueAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickManiacPerkToManiac;
    }
    if(matches.isTrueAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickSurvivorPerkToManiac;
    }
    return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.ready;
  }
}

final StreamController<DataForStagePickAndBanTestMain> _streamControllerForDataForStagePickAndBanTestMain = StreamController.broadcast();
DataForStagePickAndBanTestMain? _dataForStagePickAndBanTestMain;
final StreamController<Matches> _streamControllerForMatches = StreamController.broadcast();

Future<void> main() async {
  /// INIT LISTEN
  _streamControllerForMatches
      .stream
      .listen((event) {
        _listenMatches(event);
      });
  _streamControllerForDataForStagePickAndBanTestMain
      .stream
      .listen((event) {
         _buildView();
      });
  /// INIT CLIENT
  _dataForStagePickAndBanTestMain = DataForStagePickAndBanTestMain(false,false,_dataSourceOne,_dataSourceThree);
  /// INIT BACKEND
  _streamControllerForMatches.sink.add(_dataSourceThree);
}

void _listenMatches(Matches event) {
  _dataForStagePickAndBanTestMain?.matches = event;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _buildView() {
  switch(_dataForStagePickAndBanTestMain?.getEnumDataForStagePickAndBanTestMain) {
    case EnumDataForStagePickAndBanTestMain.isLoading:
      debugPrint("IsLoading");
      break;
    case EnumDataForStagePickAndBanTestMain.isCompletedMatch:
      debugPrint("IsCompletedMatch");
      break;
    case EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereFirst:
      debugPrint("MyUniqueIdByUserWhereFirst");
      _buildViewWhereMyUniqueIdByUserWhereFirst(_dataForStagePickAndBanTestMain!);
      break;
    case EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereSecond:
      debugPrint("MyUniqueIdByUserWhereSecond");
      _buildViewWhereMyUniqueIdByUserWhereSecond(_dataForStagePickAndBanTestMain!);
      break;
    default:
      break;
  }
}

void _buildViewWhereMyUniqueIdByUserWhereFirst(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain) {
  switch(dataForStagePickAndBanTestMain.getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst) {
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBanManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE BANED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel}");
      /// STAGE BAN MANIAC
      debugPrint("You turns Ban Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      _listViewModelOne(dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel[intInput]);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel}");
      /// STAGE PICK MANIAC
      debugPrint("You turns Pick Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      _listViewModelThree(dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel[intInput]);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBansMapsToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
        // LAST ITEM PICKED MANIAC
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond}");
      /// VIEW LIST MAPS TO PICK MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// STAGE BAN MAPS TO PICKED MANIAC
      debugPrint("You turns Ban Maps to Picked Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      _listViewModelFive(dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel[intInput]);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiacPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickSurvivorPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnBanManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE BANED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel}");
      debugPrint("Enemy turns Ban Maniac: 0");
      _listViewModelTwo(dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel[0]);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel}");
      debugPrint("Enemy turns Pick Maniac: 0");
      _listViewModelFour(dataForStagePickAndBanTestMain.matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel[0]);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyBansMapsToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      // LAST ITEM PICKED MANIAC
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond}");
      /// VIEW LIST MAPS TO PICK MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel}");
      /// STAGE BAN MAPS TO PICKED MANIAC
      debugPrint("Enemy turns Ban Maps to Picked Maniac: 0");
      _listViewModelSix(dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel[0]);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickManiacPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickSurvivorPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.ready:
      break;
  }
}

void _buildViewWhereMyUniqueIdByUserWhereSecond(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain) {
  switch(dataForStagePickAndBanTestMain.getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond) {
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBanManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBansMapsToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiacPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickSurvivorPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnBanManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnPickManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyBansMapsToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickManiacPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickSurvivorPerkToManiac:
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.ready:
      break;
  }
}

/* START ListViewModel */
/// FIRST BAN MANIAC
void _listViewModelOne(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst
      .insertToListBanManiacWhereMatches(BanManiacWhereMatches(maniacWhereMatchBalance.maniac.name));
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} banned maniac ${maniacWhereMatchBalance.maniac.name}";
  if(matches?.isBannedManiacInTheFirstNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() ?? false) {
    _firstBranchOneQListViewModelOne(matches!,textLogAction);
    return;
  }
  if(matches?.isBannedManiacInTheSecondNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() ?? false) {
    _secondBranchOneQListViewModelOne(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches!,textLogAction,false,EnumBanOrPickNamed.banManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelOne(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

void _secondBranchOneQListViewModelOne(Matches matches, String textLogAction) {
  // ADDING TO PICK LAST MANIAC
  _dataForStagePickAndBanTestMain?.matches = _dataSourceSix(matches,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

/// SECOND BAN MANIAC
void _listViewModelTwo(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond
      .insertToListBanManiacWhereMatches(BanManiacWhereMatches(maniacWhereMatchBalance.maniac.name));
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} banned maniac ${maniacWhereMatchBalance.maniac.name}";
  if(matches?.isBannedManiacInTheFirstNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() ?? false) {
    _firstBranchOneQListViewModelTwo(matches!,textLogAction);
    return;
  }
  if(matches?.isBannedManiacInTheSecondNumberStageBanParametersNumberStageBanAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond() ?? false) {
    _secondBranchOneQListViewModelTwo(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches!,textLogAction,true,EnumBanOrPickNamed.banManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelTwo(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

void _secondBranchOneQListViewModelTwo(Matches matches, String textLogAction) {
  // ADDING TO PICK LAST MANIAC
  _dataForStagePickAndBanTestMain?.matches = _dataSourceSix(matches,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

/// FIRST PICK MANIAC
void _listViewModelThree(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst
      .insertToListPickManiacWhereMatches(PickManiacWhereMatches(maniacWhereMatchBalance.maniac.name,DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)), const PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)), ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked maniac ${maniacWhereMatchBalance.maniac.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches!,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

/// SECOND PICK MANIAC
void _listViewModelFour(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond
      .insertToListPickManiacWhereMatches(PickManiacWhereMatches(maniacWhereMatchBalance.maniac.name,DateTime.now(),ListBanMapsWhereMatches(List.empty(growable: true)), const PickMapsWhereMatches(""),ListPickManiacPerkWhereMatches(List.empty(growable: true)), ListPickSurvivorPerkWhereMatches(List.empty(growable: true))));
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked maniac ${maniacWhereMatchBalance.maniac.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches!,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

/// FIRST BAN MAPS TO MANIAC
void _listViewModelFive(Maps maps) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond(maps.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} banned maps ${maps.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.name}";
  if(matches?.isBanMapsEqualsLengthMinusOneParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() ?? false) {
    _firstBranchOneQListViewModelFive(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches!,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelFive(Matches matches, String textLogAction) {
  if(matches.isPickedManiacInTheFirstNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFive(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
    _utilityOne();
    return;
  }
  if(matches.isPickedManiacInTheSecondNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFive(matches,textLogAction,false,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFive(matches,textLogAction,false,EnumBanOrPickNamed.banManiac);
  _utilityOne();
}

/// SECOND BAN MAPS TO MANIAC
void _listViewModelSix(Maps maps) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond(maps.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} banned maps ${maps.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.name}";
  if(matches?.isBanMapsEqualsLengthMinusOneParametersMatchBalanceAndListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond() ?? false) {
    _firstBranchOneQListViewModelSix(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches!,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelSix(Matches matches, String textLogAction) {
  if(matches.isPickedManiacInTheFirstNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFive(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
    _utilityOne();
    return;
  }
  if(matches.isPickedManiacInTheSecondNumberStagePickParametersNumberStagePickAndMatchBalanceAndListBanManiacWhereMatchesForUniqueIdByUserWhereFirstAndListBanManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFive(matches,textLogAction,true,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFive(matches,textLogAction,true,EnumBanOrPickNamed.banManiac);
  _utilityOne();
}
/* END ListViewModel */

/* START Utility */
void _utilityOne() {
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
  debugPrint("\n<-------TEXT LOG ACTION------->");
  debugPrint("\n${_dataForStagePickAndBanTestMain?.matches.textLogAction ?? ""}\n");
  debugPrint("<-------TEXT LOG ACTION------->\n");
}

/* END Utility */

/* START DataSource */
Matches _dataSourceFour(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      enumBanOrPickNamed.name,
      matches.numberStageBan,
      matches.numberStagePick,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.pickManiacWhereMatchesForLastPick.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
      matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
      matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
      matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

Matches _dataSourceFive(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  textLogAction += "\nSystem: picked maps ${matches.getNotBannedListMapsByLastItemManiacWhereMatchBalanceParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.listModel[0].name} to maniac ${matches.getLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.name}";
  if(matches.isPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond()) {
    return Matches(
        matches.uniqueId,
        matches.creationTime,
        matches.isCompleted,
        enumBanOrPickNamed.name,
        matches.numberStageBan,
        matches.numberStagePick,
        textLogAction,
        matches.matchBalance.getCloneModel,
        matches.pickManiacWhereMatchesForLastPick.getCloneModel,
        matches.uniqueIdByUserWhereFirst,
        matches.uniqueIdByUserWhereSecond,
        isStageBanOrPickForUniqueIdByUserWhereFirst,
        matches.isRoleManiacForUniqueIdByUserWhereFirst,
        matches.enumHowToStartATimer.name,
        matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
        matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
        matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstWhereUpdatePickMapsWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
        matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
        matches.resultRatingPointsForUniqueIdByUserWhereFirst,
        matches.resultRatingPointsForUniqueIdByUserWhereSecond);
  }
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      enumBanOrPickNamed.name,
      matches.numberStageBan,
      matches.numberStagePick,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.pickManiacWhereMatchesForLastPick.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
      matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
      matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
      matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondWhereUpdatePickMapsWhereMatchesParametersListPickManiacWhereMatchesForUniqueIdByUserWhereFirstAndListPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

Matches _dataSourceSix(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  // matches.getListManiacWhereMatchBalanceWhereBanOrPickParametersFourList.listModel.last;
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      enumBanOrPickNamed.name,
      matches.numberStageBan,
      matches.numberStagePick,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.pickManiacWhereMatchesForLastPick.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
      matches.listBanManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
      matches.listPickManiacWhereMatchesForUniqueIdByUserWhereFirst.getCloneListModel,
      matches.listPickManiacWhereMatchesForUniqueIdByUserWhereSecond.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

User get _dataSourceOne {
  return User("51d1a9f2-4fb0-11ee-be56-0242ac120002", DateTime.now());
}

MatchBalance get _dataSourceTwo {
  /// 7
  return MatchBalance(1,3,ListManiacWhereMatchBalance([
    ManiacWhereMatchBalance(
        const Maniac("Anna","assets/icon/dbd/maniac/maniac_anna.png"),
        1,
        1,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
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
        1,
        1,
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
        1,
        1,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Vesker", "assets/icon/dbd/maniac/maniac_vesker.png"),
        1,
        1,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        const ListManiacPerk([]),
        const ListSurvivorPerk([])
    ),
  ]));
}

Matches get _dataSourceThree {
  return Matches(
      "409419d6-4fb0-11ee-be56-0242ac120002",
      DateTime.now(),
      false,
      EnumBanOrPickNamed.banManiac.name,
      1,
      1,
      "",
      _dataSourceTwo,
      PickManiacWhereMatches(
          "",
          DateTime.now(),
          ListBanMapsWhereMatches(List.empty(growable: true)),
          const PickMapsWhereMatches(""),
          ListPickManiacPerkWhereMatches(List.empty(growable: true)),
          ListPickSurvivorPerkWhereMatches(List.empty(growable: true))),
      "51d1a9f2-4fb0-11ee-be56-0242ac120002",
      "5f8cd3aa-4fb0-11ee-be56-0242ac120002",
      true,
      true,
      EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereSecond.name,
      ListBanManiacWhereMatches(List.empty(growable: true)),
      ListBanManiacWhereMatches(List.empty(growable: true)),
      ListPickManiacWhereMatches(List.empty(growable: true)),
      ListPickManiacWhereMatches(List.empty(growable: true)),
      0,
      0);
}

/* END DataSource */