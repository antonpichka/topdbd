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
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/perk/perk.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_where_matches.dart';
import 'package:common_topdbd/model/round_where_matches/list_round_where_matches.dart';
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
  itsMyTurnsSystemPickManiac,
  itsMyTurnsSystemPickMapsToManiac,
  itsMyTurnsSystemPickManiacPerkToManiac,
  itsMyTurnsSystemPickSurvivorPerkToManiac,
  itsMyTurnsBanManiac,
  itsMyTurnsPickManiac,
  itsMyTurnsBansMapsToManiac,
  itsMyTurnsPickManiacPerkToManiac,
  itsMyTurnsPickSurvivorPerkToManiac,
  itsEnemyTurnsSystemPickManiac,
  itsEnemyTurnsSystemPickMapsToManiac,
  itsEnemyTurnsSystemPickManiacPerkToManiac,
  itsEnemyTurnsSystemPickSurvivorPerkToManiac,
  itsEnemyTurnBanManiac,
  itsEnemyTurnPickManiac,
  itsEnemyBansMapsToManiac,
  itsEnemyPickManiacPerkToManiac,
  itsEnemyPickSurvivorPerkToManiac,
  ready
}

enum EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond {
  itsMyTurnsSystemPickManiac,
  itsMyTurnsSystemPickMapsToManiac,
  itsMyTurnsSystemPickManiacPerkToManiac,
  itsMyTurnsSystemPickSurvivorPerkToManiac,
  itsMyTurnsBanManiac,
  itsMyTurnsPickManiac,
  itsMyTurnsBansMapsToManiac,
  itsMyTurnsPickManiacPerkToManiac,
  itsMyTurnsPickSurvivorPerkToManiac,
  itsEnemyTurnsSystemPickManiac,
  itsEnemyTurnsSystemPickMapsToManiac,
  itsEnemyTurnsSystemPickManiacPerkToManiac,
  itsEnemyTurnsSystemPickSurvivorPerkToManiac,
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
    if(matches.isTrueAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickManiac;
    }
    if(matches.isTrueAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickMapsToManiac;
    }
    if(matches.isTrueAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isTrueAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickSurvivorPerkToManiac;
    }
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
    if(matches.isFalseAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickManiac;
    }
    if(matches.isFalseAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickMapsToManiac;
    }
    if(matches.isFalseAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isFalseAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickSurvivorPerkToManiac;
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
    if(matches.isFalseAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickManiac;
    }
    if(matches.isFalseAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickMapsToManiac;
    }
    if(matches.isFalseAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isFalseAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickSurvivorPerkToManiac;
    }
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
    if(matches.isTrueAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickManiac;
    }
    if(matches.isTrueAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickMapsToManiac;
    }
    if(matches.isTrueAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isTrueAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickSurvivorPerkToManiac;
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

enum EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst {
  isLoading,
  itsMyManiacAndMyTurnsStartTimer,
  itsMyManiacAndWaitEnemySurvivor,
  itsMyManiacAndStopTimer,
  itsMyManiacAndNextRound,
  itsMySurvivorAndWaitEnemyManiac,
  itsMySurvivorAndMyTurnsStartTimer,
  itsMySurvivorAndStopTimer,
  itsMySurvivorAndNextRound,
  ready
}

final class DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst {
  bool isLoading;
  bool isLoadingForButton;
  User user;
  Matches matches;

  DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(this.isLoading,this.isLoadingForButton,this.user,this.matches);

  EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst get getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst {
    if(isLoading) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.isLoading;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondSurvivorAndWaitUniqueIdByUserWhereFirstManiacParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndMyTurnsStartTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndWaitUniqueIdByUserWhereSecondSurvivorOrUniqueIdByUserWhereSecondSurvivorAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndWaitEnemySurvivor;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndStopTimerOrUniqueIdByUserWhereSecondSurvivorAndStopTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndStopTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndNextRoundOrUniqueIdByUserWhereSecondSurvivorAndNextRoundParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndNextRound;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndWaitUniqueIdByUserWhereSecondManiacOrUniqueIdByUserWhereSecondManiacAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndWaitEnemyManiac;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondManiacAndWaitUniqueIdByUserWhereFirstSurvivorParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndMyTurnsStartTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndStopTimerOrUniqueIdByUserWhereSecondManiacAndStopTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndStopTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndNextRoundOrUniqueIdByUserWhereSecondManiacAndNextRoundParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndNextRound;
    }
    return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.ready;
  }
}

enum EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond {
  isLoading,
  itsMyManiacAndMyTurnsStartTimer,
  itsMyManiacAndWaitEnemySurvivor,
  itsMyManiacAndStopTimer,
  itsMyManiacAndNextRound,
  itsMySurvivorAndWaitEnemyManiac,
  itsMySurvivorAndMyTurnsStartTimer,
  itsMySurvivorAndStopTimer,
  itsMySurvivorAndNextRound,
  ready
}

final class DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond {
  bool isLoading;
  bool isLoadingForButton;
  User user;
  Matches matches;

  DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(this.isLoading,this.isLoadingForButton,this.user,this.matches);

  EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond get getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond {
    if(isLoading) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.isLoading;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndWaitUniqueIdByUserWhereSecondManiacOrUniqueIdByUserWhereSecondManiacAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndMyTurnsStartTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondManiacAndWaitUniqueIdByUserWhereFirstSurvivorParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndWaitEnemySurvivor;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndStopTimerOrUniqueIdByUserWhereSecondManiacAndStopTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndStopTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstSurvivorAndNextRoundOrUniqueIdByUserWhereSecondManiacAndNextRoundParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndNextRound;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondSurvivorAndWaitUniqueIdByUserWhereFirstManiacParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndWaitEnemyManiac;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndWaitUniqueIdByUserWhereSecondSurvivorOrUniqueIdByUserWhereSecondSurvivorAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndMyTurnsStartTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndStopTimerOrUniqueIdByUserWhereSecondSurvivorAndStopTimerParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndStopTimer;
    }
    if(matches.isUniqueIdByUserWhereFirstManiacAndNextRoundOrUniqueIdByUserWhereSecondSurvivorAndNextRoundParameterListRoundWhereMatches()) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndNextRound;
    }
    return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.ready;
  }
}

final StreamController<DataForStagePickAndBanTestMain> _streamControllerForDataForStagePickAndBanTestMain = StreamController.broadcast();
DataForStagePickAndBanTestMain? _dataForStagePickAndBanTestMain;
final StreamController<DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst> _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst = StreamController.broadcast();
DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst? _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst;
final StreamController<DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond> _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond = StreamController.broadcast();
DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond? _dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond;

Future<void> main() async {
  /// INIT LISTEN
  _streamControllerForDataForStagePickAndBanTestMain
      .stream
      .listen((event) {
         _buildWidgetDataForStagePickAndBanTestMain();
      });
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst
      .stream
      .listen((event) {
        _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst();
      });
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond
      .stream
      .listen((event) {
        _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond();
      });
  /// INIT DATA
  _dataForStagePickAndBanTestMain = DataForStagePickAndBanTestMain(false,false,_dataSourceGetUser,_dataSourceGetMatches);
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _buildWidgetDataForStagePickAndBanTestMain() {
  switch(_dataForStagePickAndBanTestMain?.getEnumDataForStagePickAndBanTestMain) {
    case EnumDataForStagePickAndBanTestMain.isLoading:
      debugPrint("IsLoading\n");
      break;
    case EnumDataForStagePickAndBanTestMain.isCompletedMatch:
      debugPrint("IsCompletedMatch\n");
      break;
    case EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereFirst:
      debugPrint("MyUniqueIdByUserWhereFirst\n");
      _buildWidgetDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst(_dataForStagePickAndBanTestMain!);
      break;
    case EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereSecond:
      debugPrint("MyUniqueIdByUserWhereSecond\n");
      _buildWidgetDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond(_dataForStagePickAndBanTestMain!);
      break;
    default:
      break;
  }
}

Future<void> _buildWidgetDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain)
async {
  switch(dataForStagePickAndBanTestMain.getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst) {
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickManiac:
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// SYSTEM PICKED LAST MAPS TO PICKED MANIAC
      debugPrint("System: Now Pick Last Maniac");
      _listViewModelFirstSystemPickManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MAPS TO PICKED MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// SYSTEM PICKED LAST MAPS TO PICKED MANIAC
      debugPrint("System: Now Pick Last Map");
      _listViewModelFirstSystemPickMapsToManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("ListManiacPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}");
      /// SYSTEM PICKED LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("System: Now Pick Maniac Perk");
      _listViewModelFirstSystemPickManiacPerkToManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST SURVIVOR PERK TO PICKED MANIAC
      debugPrint("ListSurvivorPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}");
      /// SYSTEM PICKED LIST SURVIVOR PERK TO PICKED MANIAC
      debugPrint("System: Now Pick Survivor Perk");
      _listViewModelFirstSystemPickSurvivorPerkToManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBanManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      _listViewModelFirstBanManiac(maniacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      _listViewModelFirstPickManiac(maniacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBansMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MAPS TO PICKED MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE BAN MAPS TO PICKED MANIAC
      debugPrint("You turns Ban Maps to Picked Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maps = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance
          .listModel[intInput];
      _listViewModelFirstBanMapsToManiac(maps);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      _listViewModelFirstPickManiacPerkToManiac(maniacPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      _listViewModelFirstPickSurvivorPerkToManiac(survivorPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedAndPickedListManiacWhereMatchBalanceParametersListBanManiacWhereMatchesAndListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// SYSTEM PICKED LAST MAPS TO PICKED MANIAC
      debugPrint("System: Now Pick Last Maniac");
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondSystemPickManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MAPS TO PICKED MANIAC (WHO CAN BE BANED)
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// SYSTEM PICKED LAST MAPS TO PICKED MANIAC
      debugPrint("System: Now Pick Last Map");
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondSystemPickMapsToManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("ListManiacPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}");
      /// SYSTEM PICKED LIST MANIAC PERK TO PICKED MANIAC
      debugPrint("System: Now Pick Maniac Perk");
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondSystemPickManiacPerkToManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW PICKED KILLER
      debugPrint("\nPickedManiac: ${dataForStagePickAndBanTestMain.matches.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches}");
      /// VIEW LIST SURVIVOR PERK TO PICKED MANIAC
      debugPrint("ListSurvivorPerkToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}");
      /// SYSTEM PICKED LIST SURVIVOR PERK TO PICKED MANIAC
      debugPrint("System: Now Pick Survivor Perk");
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondSystemPickSurvivorPerkToManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnBanManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondBanManiac(firstManiacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondPickManiac(firstManiacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyBansMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      debugPrint("ListMapsToPickedManiac: ${dataForStagePickAndBanTestMain.matches.getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.listModel}");
      /// STAGE BAN MAPS TO PICKED MANIAC
      debugPrint("Enemy turns Ban Maps to Picked Maniac: 0");
      final firstMaps = dataForStagePickAndBanTestMain
          .matches
          .getNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance
          .listModel[0];
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondBanMapsToManiac(firstMaps);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondPickManiacPerkToManiac(firstManiacPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
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
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondPickSurvivorPerkToManiac(survivorPerk);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.ready:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LAST LIST PICK MANIAC
      debugPrint("ListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereFirstParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereFirst.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListBanManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      debugPrint("\nREADY");
      debugPrint("Please wait");
      await Future.delayed(const Duration(seconds: 1));
      await _initWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst();
      break;
  }
}

Future<void> _buildWidgetDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain)
async {
  switch(dataForStagePickAndBanTestMain.getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond) {
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBanManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBansMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnBanManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyBansMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickManiacPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickSurvivorPerkToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.ready:
      await _initWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond();
      break;
  }
}

Future<void> _initWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst()
async {
  await _listViewModelInitListRoundWhereMyUniqueIdByUserWhereFirst();
  _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst();
}

Future<void> _initWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond()
async {
  await _listViewModelInitListRoundWhereMyUniqueIdByUserWhereSecond();
  _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond();
}

void _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst() {
  switch(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst) {
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.isLoading:
      debugPrint("isLoading\n");
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndMyTurnsStartTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE MANIAC IS
      debugPrint("You are a maniac");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWhereMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirst}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.uniqueIdByUserWhereSecond}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecond}");
      /// START ROUND
      debugPrint("Are you ready to start for a Maniac ? (Input 'yes'): ");
      final input = stdin.readLineSync();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndWaitEnemySurvivor:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndStopTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndNextRound:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndWaitEnemyManiac:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndMyTurnsStartTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndStopTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndNextRound:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.ready:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      break;
  }
}

void _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond() {
  switch(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond) {
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.isLoading:
      debugPrint("isLoading\n");
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndMyTurnsStartTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndWaitEnemySurvivor:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndStopTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndNextRound:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndWaitEnemyManiac:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndMyTurnsStartTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndStopTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndNextRound:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.ready:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond!);
      break;
  }
}

/* START ListViewModel */
/// INIT LIST ROUND WHERE MY UNIQUE ID BY USER WHERE FIRST
Future<void> _listViewModelInitListRoundWhereMyUniqueIdByUserWhereFirst()
async {
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst = DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(false, false, _dataSourceGetUser, _dataForStagePickAndBanTestMain!.matches.getCloneModel);
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.insertListRoundWhereMatchesParameterListRoundWhereMatches();
  // This line will also be applied to enum 'itsMyManiacAndNextRound' and 'itsMySurvivorAndNextRound'
  final textLogAction = "${matches?.textLogAction}\nSystem: start ${matches?.getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round} round. Maniac '${matches?.getUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWhereMatches.name}'.RoleManiac '${matches?.getUniqueIdByUserWhoRoleManiacParameterListRoundWhereMatches}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  return;
}

/// INIT LIST ROUND WHERE MY UNIQUE ID BY USER WHERE SECOND
Future<void> _listViewModelInitListRoundWhereMyUniqueIdByUserWhereSecond()
async {
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond = DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(false, false, _dataSourceGetUser, _dataForStagePickAndBanTestMain!.matches.getCloneModel);
  return;
}

/// FIRST SYSTEM PICK MANIAC
void _listViewModelFirstSystemPickManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked man ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND SYSTEM PICK MANIAC
void _listViewModelSecondSystemPickManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked man ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST SYSTEM PICK MAPS TO MANIAC
void _listViewModelFirstSystemPickMapsToManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.updatePickMapsWhereMatchesParameterListPickManiacWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maps ${matches?.getLastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isNotEmptyByListManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _secondBranchOneQListViewModelFirstSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickMPNotEqualsLengthListMPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.systemPickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelFirstSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.systemPickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND SYSTEM PICK MAPS TO MANIAC
void _listViewModelSecondSystemPickMapsToManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.updatePickMapsWhereMatchesParameterListPickManiacWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maps ${matches?.getLastItemMapsFromNotBannedListMapsByLastItemPickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isNotEmptyByListManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _secondBranchOneQListViewModelSecondSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickMPNotEqualsLengthListMPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.systemPickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelSecondSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.systemPickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST SYSTEM PICK MANIAC PERK TO MANIAC
void _listViewModelFirstSystemPickManiacPerkToManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertListPickManiacPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maniac perk ${matches?.getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstSystemPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstSystemPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.systemPickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND SYSTEM PICK MANIAC PERK TO MANIAC
void _listViewModelSecondSystemPickManiacPerkToManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertListPickManiacPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maniac perk ${matches?.getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondSystemPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondSystemPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.systemPickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST SYSTEM PICK SURVIVOR PERK TO MANIAC
void _listViewModelFirstSystemPickSurvivorPerkToManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertListPickSurvivorPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked survivor perk ${matches?.getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND SYSTEM PICK SURVIVOR PERK TO MANIAC
void _listViewModelSecondSystemPickSurvivorPerkToManiac() {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertListPickSurvivorPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked survivor perk ${matches?.getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageBanOrPickForUniqueIdByUserWhereFirst,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST BAN MANIAC
void _listViewModelFirstBanManiac(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListBanManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = (matches?.textLogAction.isNotEmpty ?? false)
      ? "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} banned maniac ${maniacWhereMatchBalance.maniac.name}"
      : "Player: ${matches?.uniqueIdByUserWhereFirst} banned maniac ${maniacWhereMatchBalance.maniac.name}";
  if(matches?.isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstBanManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _secondBranchOneQListViewModelFirstBanManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumBanOrPickNamed.banManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelFirstBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.systemPickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND BAN MANIAC
void _listViewModelSecondBanManiac(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListBanManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = (matches?.textLogAction.isNotEmpty ?? false)
      ? "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} banned maniac ${maniacWhereMatchBalance.maniac.name}"
      : "Player: ${matches?.uniqueIdByUserWhereSecond} banned maniac ${maniacWhereMatchBalance.maniac.name}";
  if(matches?.isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondBanManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() ?? false) {
    _secondBranchOneQListViewModelSecondBanManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumBanOrPickNamed.banManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelSecondBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.systemPickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST PICK MANIAC
void _listViewModelFirstPickManiac(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListPickManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked maniac ${maniacWhereMatchBalance.maniac.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND PICK MANIAC
void _listViewModelSecondPickManiac(ManiacWhereMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListPickManiacWhereMatches(maniacWhereMatchBalance.maniac.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked maniac ${maniacWhereMatchBalance.maniac.name}";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST BAN MAPS TO MANIAC
void _listViewModelFirstBanMapsToManiac(Maps maps) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromMapsParameterListPickManiacWhereMatches(maps.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} banned maps ${maps.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumBanOrPickNamed.systemPickMapsToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumBanOrPickNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND BAN MAPS TO MANIAC
void _listViewModelSecondBanMapsToManiac(Maps maps) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromMapsParameterListPickManiacWhereMatches(maps.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} banned maps ${maps.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumBanOrPickNamed.systemPickMapsToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumBanOrPickNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST PICK MANIAC PERK TO MANIAC
void _listViewModelFirstPickManiacPerkToManiac(ManiacPerk maniacPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked maniac perk ${maniacPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickManiacPerkForUniqueIdByUserWhereFirstEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumBanOrPickNamed.pickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickManiacPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.systemPickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND PICK MANIAC PERK TO MANIAC
void _listViewModelSecondPickManiacPerkToManiac(ManiacPerk maniacPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked maniac perk ${maniacPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickManiacPerkForUniqueIdByUserWhereSecondEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumBanOrPickNamed.pickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickManiacPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.systemPickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST PICK SURVIVOR PERK TO MANIAC
void _listViewModelFirstPickSurvivorPerkToManiac(SurvivorPerk survivorPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereFirst} picked survivor perk ${survivorPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickSurvivorPerkForUniqueIdByUserWhereFirstEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstPickSurvivorPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstPickSurvivorPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}
/// SECOND PICK SURVIVOR PERK TO MANIAC
void _listViewModelSecondPickSurvivorPerkToManiac(SurvivorPerk survivorPerk) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk.getCloneModel);
  final textLogAction = "${matches?.textLogAction}\nPlayer: ${matches?.uniqueIdByUserWhereSecond} picked survivor perk ${survivorPerk.perk.name} to maniac ${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.name}";
  if(matches?.isPickSurvivorPerkForUniqueIdByUserWhereSecondEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondPickSurvivorPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondPickSurvivorPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.ready);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumBanOrPickNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}
/* END ListViewModel */

/* START Utility */
void _utilityDataForStagePickAndBanTestMain(DataForStagePickAndBanTestMain dataForStagePickAndBanTestMain) {
  debugPrint("\n<-------TEXT LOG ACTION------->");
  debugPrint("\n${dataForStagePickAndBanTestMain.matches.textLogAction}\n");
  debugPrint("<-------TEXT LOG ACTION------->\n");
}

void _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst) {
  debugPrint("\n<-------TEXT LOG ACTION------->");
  debugPrint("\n${dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.matches.textLogAction}\n");
  debugPrint("<-------TEXT LOG ACTION------->\n");
}

void _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond) {
  debugPrint("\n<-------TEXT LOG ACTION------->");
  debugPrint("\n${dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.matches.textLogAction}\n");
  debugPrint("<-------TEXT LOG ACTION------->\n");
}
/* END Utility */

/* START DataSource */
Matches _dataSourceDataForStagePickAndBanTestMain(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumBanOrPickNamed enumBanOrPickNamed) {
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
      matches.listBanManiacWhereMatches.getCloneListModel,
      matches.listPickManiacWhereMatches.getCloneListModel,
      matches.listRoundWhereMatches.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

Matches _dataSourceDataForListRoundTestMain(Matches matches,String textLogAction) {
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      matches.enumBanOrPickNamed.name,
      textLogAction,
      matches.matchBalance.getCloneModel,
      matches.uniqueIdByUserWhereFirst,
      matches.uniqueIdByUserWhereSecond,
      matches.isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.listBanManiacWhereMatches.getCloneListModel,
      matches.listPickManiacWhereMatches.getCloneListModel,
      matches.listRoundWhereMatches.getCloneListModel,
      matches.resultRatingPointsForUniqueIdByUserWhereFirst,
      matches.resultRatingPointsForUniqueIdByUserWhereSecond);
}

User get _dataSourceGetUser {
  return User("MyPlayer 51d1a9f2-4fb0-11ee-be56-0242ac120002", DateTime.now());
}

MatchBalance get _dataSourceGetMatchBalance {
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

Matches get _dataSourceGetMatches {
  return Matches(
      "409419d6-4fb0-11ee-be56-0242ac120002",
      DateTime.now(),
      false,
      EnumBanOrPickNamed.banManiac.name,
      "",
      _dataSourceGetMatchBalance,
      "MyPlayer 51d1a9f2-4fb0-11ee-be56-0242ac120002",
      "EnemyPlayer 5f8cd3aa-4fb0-11ee-be56-0242ac120002",
      true,
      ListBanManiacWhereMatches(List.empty(growable: true)),
      ListPickManiacWhereMatches(List.empty(growable: true)),
      ListRoundWhereMatches(List.empty(growable: true)),
      0,
      0);
}
/* END DataSource */