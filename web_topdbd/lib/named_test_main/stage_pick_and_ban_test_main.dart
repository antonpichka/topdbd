import 'dart:async';
import 'dart:io';

import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_where_matches.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_where_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_ban_or_pick_named.dart';
import 'package:common_topdbd/model/matches/enum_how_to_start_a_timer.dart';
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/perk/perk.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
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
  _dataForStagePickAndBanTestMain = DataForStagePickAndBanTestMain(false,false,_initDataSource,_initDataSourceThree);
  /// INIT BACKEND
  _streamControllerForMatches.sink.add(_initDataSourceThree);
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE BANED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE BAN MANIAC
      debugPrint("You turns Ban Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maniacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance
          .listModel[intInput];
      _listViewModelOne(maniacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE PICK MANIAC
      debugPrint("You turns Pick Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maniacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance
          .listModel[intInput];
      _listViewModelThree(maniacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBansMapsToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MAPS TO PICKED MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE BAN MAPS TO PICKED MANIAC
      debugPrint("You turns Ban Maps to Picked Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maps = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance
          .listModel[intInput];
      _listViewModelFive(maps);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiacPerkToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("ListManiacPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotPickedListManiacPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE PICK MANIAC PERK TO PICKED MANIAC
      debugPrint("You turns Pick Maniac Perk to Picked Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maniacPerk = dataForStagePickAndBanTestMain
          .matches
          .getNotPickedListManiacPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance
          .listModel[intInput];
      _listViewModelSeven(maniacPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickSurvivorPerkToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("ListSurvivorPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotPickedListSurvivorPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE PICK MANIAC PERK TO PICKED MANIAC
      debugPrint("You turns Pick Survivor Perk to Picked Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final survivorPerk = dataForStagePickAndBanTestMain
          .matches
          .getNotPickedListSurvivorPerkForUniqueIdByUserWhereFirstParameterListPickManiacWhereMatchesAndMatchBalance
          .listModel[intInput];
      _listViewModelNine(survivorPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnBanManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE BANED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel}");
      debugPrint("Enemy turns Ban Maniac: 0");
      final firstManiacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance
          .listModel[0];
      _listViewModelTwo(firstManiacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel}");
      debugPrint("Enemy turns Pick Maniac: 0");
      final firstManiacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance
          .listModel[0];
      _listViewModelFour(firstManiacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyBansMapsToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      // LAST ITEM PICKED MANIAC
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MAPS TO PICK MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE BAN MAPS TO PICKED MANIAC
      debugPrint("Enemy turns Ban Maps to Picked Maniac: 0");
      final firstMaps = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance
          .listModel[0];
      _listViewModelSix(firstMaps);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickManiacPerkToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("ListManiacPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotPickedListManiacPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE PICK MANIAC PERK TO PICKED MANIAC
      debugPrint("Enemy turns Pick Maniac Perk to Picked Maniac: 0");
      final firstManiacPerk = dataForStagePickAndBanTestMain
          .matches
          .getNotPickedListManiacPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance
          .listModel[0];
      _listViewModelEight(firstManiacPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickSurvivorPerkToManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("ListSurvivorPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotPickedListSurvivorPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE PICK MANIAC PERK TO PICKED MANIAC
      debugPrint("Enemy turns Pick Survivor Perk to Picked Maniac: 0");
      final survivorPerk = dataForStagePickAndBanTestMain
          .matches
          .getNotPickedListSurvivorPerkForUniqueIdByUserWhereSecondParameterListPickManiacWhereMatchesAndMatchBalance
          .listModel[0];
      _listViewModelTen(survivorPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.ready:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LAST LIST PICK MANIAC
      debugPrint("ListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      debugPrint("\nREADY");
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
      ?.insertBanManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListBanManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} banned maniac ${maniacWhereMatchBalance.maniac.name}";
  if(matches?.isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelOne(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _secondBranchOneQListViewModelOne(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,false,EnumBanOrPickNamed.banManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelOne(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

void _secondBranchOneQListViewModelOne(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceThree(matches,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
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
      ?.insertBanManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListBanManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} banned maniac ${maniacWhereMatchBalance.maniac.name}";
  if(matches?.isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelTwo(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _secondBranchOneQListViewModelTwo(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,true,EnumBanOrPickNamed.banManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelTwo(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

void _secondBranchOneQListViewModelTwo(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceThree(matches,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
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
      ?.insertPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListPickManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked maniac ${maniacWhereMatchBalance.maniac.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
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
      ?.insertPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListPickManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked maniac ${maniacWhereMatchBalance.maniac.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
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
      ?.insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromMapsParameterListPickManiacWhereMatches(maps.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} banned maps ${maps.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFive(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelFive(Matches matches, String textLogAction) {
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceTwo(matches,textLogAction,false,EnumBanOrPickNamed.banManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceTwo(matches,textLogAction,false,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceTwo(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
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
      ?.insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromMapsParameterListPickManiacWhereMatches(maps.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} banned maps ${maps.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSix(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelSix(Matches matches, String textLogAction) {
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceTwo(matches,textLogAction,true,EnumBanOrPickNamed.banManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceTwo(matches,textLogAction,true,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceTwo(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

/// FIRST PICK MANIAC PERK TO MANIAC
void _listViewModelSeven(ManiacPerk maniacPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked maniac perk ${maniacPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickManiacPerkForUniqueIdByUserWhereFirstEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSeven(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,true,EnumBanOrPickNamed.pickManiacPerkToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelSeven(Matches matches, String textLogAction) {
  if(matches.isPickManiacPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,false,EnumBanOrPickNamed.pickManiacPerkToManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,false,EnumBanOrPickNamed.banManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,false,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

/// SECOND PICK MANIAC PERK TO MANIAC
void _listViewModelEight(ManiacPerk maniacPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked maniac perk ${maniacPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickManiacPerkForUniqueIdByUserWhereSecondEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelEight(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,false,EnumBanOrPickNamed.pickManiacPerkToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelEight(Matches matches, String textLogAction) {
  if(matches.isPickManiacPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,true,EnumBanOrPickNamed.pickManiacPerkToManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,true,EnumBanOrPickNamed.banManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,true,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceFour(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}

/// FIRST PICK SURVIVOR PERK TO MANIAC
void _listViewModelNine(SurvivorPerk survivorPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked survivor perk ${survivorPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickSurvivorPerkForUniqueIdByUserWhereFirstEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelNine(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,true,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelNine(Matches matches, String textLogAction) {
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,false,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,false,EnumBanOrPickNamed.banManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,false,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _utilityOne();
}
/// SECOND PICK SURVIVOR PERK TO MANIAC
void _listViewModelTen(SurvivorPerk survivorPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked survivor perk ${survivorPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickSurvivorPerkForUniqueIdByUserWhereSecondEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelTen(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches!,textLogAction,false,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
  _utilityOne();
}

void _firstBranchOneQListViewModelTen(Matches matches, String textLogAction) {
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,true,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,true,EnumBanOrPickNamed.banManiac);
    _utilityOne();
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,true,EnumBanOrPickNamed.ready);
    _utilityOne();
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceOne(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
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
Matches _dataSourceOne(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      enumBanOrPickNamed.name,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatches.getCloneListModel,
      matches.listPickManiacWhereMatches.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

Matches _dataSourceTwo(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  textLogAction += "\nSystem: picked maps ${matches.getNotBannedListMapsByLastItemManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel.last.name} to maniac ${matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches.getUpdatedPickMapsAndListPickManiacPerkWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed)
      .listModel
      .isEmpty)
  {
    return Matches(
        matches.uniqueId,
        matches.creationTime,
        matches.isCompleted,
        matches.getEnumBanOrPickNamedWhereNextBanOrPickAfterBansMapsFromEnumBanOrPickNamedParameterEnumBanOrPickNamed(enumBanOrPickNamed).name,
        textLogAction,
        matches.matchBalance.getCloneModel,
        matches.uniqueIdByUserWhereFirst,
        matches.uniqueIdByUserWhereSecond,
        isStageBanOrPickForUniqueIdByUserWhereFirst,
        matches.isRoleManiacForUniqueIdByUserWhereFirst,
        matches.enumHowToStartATimer.name,
        matches.listBanManiacWhereMatches.getCloneListModel,
        matches.getUpdatedPickMapsAndManiacOrSurvivorPerkToListPickManiacWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).getCloneListModel,
        matches.resultRatingPointsForUniqueIdByUserWhereFirst,
        matches.resultRatingPointsForUniqueIdByUserWhereSecond);
  }
  textLogAction += "\nSystem: picked maniac perk ${matches.getUpdatedPickMapsAndListPickManiacPerkWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).listModel} to maniac ${matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches.getUpdatedPickMapsAndListPickSurvivorPerkWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed)
      .listModel
      .isEmpty)
  {
    return Matches(
        matches.uniqueId,
        matches.creationTime,
        matches.isCompleted,
        matches.getEnumBanOrPickNamedWhereNextBanOrPickAfterBansMapsFromEnumBanOrPickNamedParameterEnumBanOrPickNamed(enumBanOrPickNamed).name,
        textLogAction,
        matches.matchBalance.getCloneModel,
        matches.uniqueIdByUserWhereFirst,
        matches.uniqueIdByUserWhereSecond,
        isStageBanOrPickForUniqueIdByUserWhereFirst,
        matches.isRoleManiacForUniqueIdByUserWhereFirst,
        matches.enumHowToStartATimer.name,
        matches.listBanManiacWhereMatches.getCloneListModel,
        matches.getUpdatedPickMapsAndManiacOrSurvivorPerkToListPickManiacWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).getCloneListModel,
        matches.resultRatingPointsForUniqueIdByUserWhereFirst,
        matches.resultRatingPointsForUniqueIdByUserWhereSecond);
  }
  textLogAction += "\nSystem: picked survivor perk ${matches.getUpdatedPickMapsAndListPickSurvivorPerkWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).listModel} to maniac ${matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      matches.getEnumBanOrPickNamedWhereNextBanOrPickAfterBansMapsFromEnumBanOrPickNamedParameterEnumBanOrPickNamed(enumBanOrPickNamed).name,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatches.getCloneListModel,
      matches.getUpdatedPickMapsAndManiacOrSurvivorPerkToListPickManiacWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

Matches _dataSourceThree(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  matches.insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches();
  textLogAction += "\nSystem: picked man ${matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      enumBanOrPickNamed.name,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatches.getCloneListModel,
      matches.listPickManiacWhereMatches.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

Matches _dataSourceFour(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
  if(matches.getInsertingSurvivorPerkAndListPickSurvivorPerkWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed)
      .listModel
      .isEmpty)
  {
    return Matches(
        matches.uniqueId,
        matches.creationTime,
        matches.isCompleted,
        matches.getEnumBanOrPickNamedWhereNextBanOrPickAfterPicksManiacPerkFromEnumBanOrPickNamedParameterEnumBanOrPickNamed(enumBanOrPickNamed).name,
        textLogAction,
        matches.matchBalance.getCloneModel,
        matches.uniqueIdByUserWhereFirst,
        matches.uniqueIdByUserWhereSecond,
        isStageBanOrPickForUniqueIdByUserWhereFirst,
        matches.isRoleManiacForUniqueIdByUserWhereFirst,
        matches.enumHowToStartATimer.name,
        matches.listBanManiacWhereMatches.getCloneListModel,
        matches.getInsertingSurvivorPerkToListPickManiacWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).getCloneListModel,
        matches.resultRatingPointsForUniqueIdByUserWhereFirst,
        matches.resultRatingPointsForUniqueIdByUserWhereSecond);
  }
  textLogAction += "\nSystem: picked survivor perk ${matches.getInsertingSurvivorPerkAndListPickSurvivorPerkWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).listModel} to maniac ${matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      matches.getEnumBanOrPickNamedWhereNextBanOrPickAfterPicksManiacPerkFromEnumBanOrPickNamedParameterEnumBanOrPickNamed(enumBanOrPickNamed).name,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.isRoleManiacForUniqueIdByUserWhereFirst,
      matches.enumHowToStartATimer.name,
      matches.listBanManiacWhereMatches.getCloneListModel,
      matches.getInsertingSurvivorPerkToListPickManiacWhereMatchesParameterListPickManiacWhereMatches(enumBanOrPickNamed).getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}


User get _initDataSource {
  return User("51d1a9f2-4fb0-11ee-be56-0242ac120002", DateTime.now());
}

MatchBalance get _initDataSourceTwo {
  /// 3 Round
  /// 9 Mans
  /// 3-5 Maps To Maniac
  /// 0-2 Pick Maniac/Survivor Perk to Maniac
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
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
          ManiacPerk(const Perk("Raffle", ""))
        ]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
        ])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Bilyas", "assets/icon/dbd/maniac/maniac_bilyas.png"),
        1,
        1,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
        ]),
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
          ManiacPerk(const Perk("Raffle", ""))
        ]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
        ])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Bubba", "assets/icon/dbd/maniac/maniac_bubba.png"),
        0,
        1,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
        ]),
        const ListManiacPerk([]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
          SurvivorPerk(const Perk("Flexibility",""))
        ])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Trapper", "assets/icon/dbd/maniac/maniac_trapper.png"),
        2,
        2,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("Mine","assets/icon/dbd/maps/maps_ind_mine.png"),
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
        ]),
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
          ManiacPerk(const Perk("Raffle", ""))
        ]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
          SurvivorPerk(const Perk("Flexibility",""))
        ])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Mor", "assets/icon/dbd/maniac/maniac_mor.png"),
        0,
        1,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        const ListManiacPerk([]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
          SurvivorPerk(const Perk("Flexibility",""))
        ])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Nurse", "assets/icon/dbd/maniac/maniac_nurse.png"),
        1,
        0,
        const ListMaps([
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
          ManiacPerk(const Perk("Raffle", ""))
        ]),
        const ListSurvivorPerk([])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Kolya", "assets/icon/dbd/maniac/maniac_kolya.png"),
        1,
        1,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
        ]),
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
        ]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
          SurvivorPerk(const Perk("Flexibility",""))
        ])
    ),
    ManiacWhereMatchBalance(
        const Maniac("Doctor", "assets/icon/dbd/maniac/maniac_doctor.png"),
        1,
        2,
        const ListMaps([
          Maps("Chapel","assets/icon/dbd/maps/maps_asy_chapel.png"),
          Maps("Coal Tower","assets/icon/dbd/maps/maps_ind_coal_tower.png"),
          Maps("StoreHouse","assets/icon/dbd/maps/maps_ind_storehouse.png"),
          Maps("Gas Station","assets/icon/dbd/maps/maps_jnk_gas_station.png"),
          Maps("Scrapyard","assets/icon/dbd/maps/maps_jnk_scrapyard.png")
        ]),
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
          ManiacPerk(const Perk("Raffle", ""))
        ]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
          SurvivorPerk(const Perk("Flexibility",""))
        ])
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
        ListManiacPerk([
          ManiacPerk(const Perk("Brutal strength", "")),
          ManiacPerk(const Perk("Raffle", ""))
        ]),
        ListSurvivorPerk([
          SurvivorPerk(const Perk("Sprint","")),
          SurvivorPerk(const Perk("Flexibility",""))
        ])
    ),
  ]));
}

Matches get _initDataSourceThree {
  return Matches(
      "409419d6-4fb0-11ee-be56-0242ac120002",
      DateTime.now(),
      false,
      EnumBanOrPickNamed.banManiac.name,
      "",
      _initDataSourceTwo,
      "51d1a9f2-4fb0-11ee-be56-0242ac120002",
      "5f8cd3aa-4fb0-11ee-be56-0242ac120002",
      true,
      true,
      EnumHowToStartATimer.isRoleManiacForUniqueIdByUserWhereSecond.name,
      ListBanManiacWhereMatches(List.empty(growable: true)),
      ListPickManiacWhereMatches(List.empty(growable: true)),
      0,
      0);
}
/* END DataSource */