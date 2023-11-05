import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:common_topdbd/model/ban_maniac_where_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_where_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/matches/enum_stage_named.dart';
import 'package:common_topdbd/model/matches/matches.dart';
import 'package:common_topdbd/model/perk/perk.dart';
import 'package:common_topdbd/model/pick_maniac_where_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_where_matches/list_round_w_matches.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

enum EnumDataForStagePickAndBanTestMain {
  isLoading,
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
    if(user.uniqueId == matches.firstUniqueIdByUser) {
      return EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereFirst;
    }
    return EnumDataForStagePickAndBanTestMain.myUniqueIdByUserWhereSecond;
  }

  EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst get getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst {
    if(matches.isWhereEqualsSystemPickManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickManiac;
    }
    if(matches.isWhereEqualsSystemPickMapsToPickedManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickMapsToManiac;
    }
    if(matches.isWhereEqualsSystemPickManiacPerkToPickedManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isWhereEqualsSystemPickSurvivorPerkToPickedManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickSurvivorPerkToManiac;
    }
    if(matches.isWhereTrueAndEqualsBanManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBanManiac;
    }
    if(matches.isWhereTrueAndEqualsPickManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiac;
    }
    if(matches.isWhereTrueAndEqualsBanMapsToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBansMapsToManiac;
    }
    if(matches.isWhereTrueAndEqualsPickManiacPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiacPerkToManiac;
    }
    if(matches.isWhereTrueAndEqualsPickSurvivorPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickSurvivorPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickMapsToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickMapsToManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickManiacPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickSurvivorPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickSurvivorPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsBanManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnBanManiac;
    }
    if(matches.isWhereFalseAndEqualsPickManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiac;
    }
    if(matches.isWhereFalseAndEqualsBanMapsToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyBansMapsToManiac;
    }
    if(matches.isWhereFalseAndEqualsPickManiacPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickManiacPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsPickSurvivorPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyPickSurvivorPerkToManiac;
    }
    return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.ready;
  }

  EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond get getEnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond {
    if(matches.isWhereFalseAndEqualsSystemPickManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickMapsToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickMapsToManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickManiacPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsSystemPickSurvivorPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsSystemPickSurvivorPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsBanManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBanManiac;
    }
    if(matches.isWhereFalseAndEqualsPickManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiac;
    }
    if(matches.isWhereFalseAndEqualsBanMapsToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsBansMapsToManiac;
    }
    if(matches.isWhereFalseAndEqualsPickManiacPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickManiacPerkToManiac;
    }
    if(matches.isWhereFalseAndEqualsPickSurvivorPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsMyTurnsPickSurvivorPerkToManiac;
    }
    if(matches.isWhereEqualsSystemPickManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickManiac;
    }
    if(matches.isWhereEqualsSystemPickMapsToPickedManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickMapsToManiac;
    }
    if(matches.isWhereEqualsSystemPickManiacPerkToPickedManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickManiacPerkToManiac;
    }
    if(matches.isWhereEqualsSystemPickSurvivorPerkToPickedManiacParameterEnumStageNamed()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnsSystemPickSurvivorPerkToManiac;
    }
    if(matches.isWhereTrueAndEqualsBanManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnBanManiac;
    }
    if(matches.isWhereTrueAndEqualsPickManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyTurnPickManiac;
    }
    if(matches.isWhereTrueAndEqualsBanMapsToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyBansMapsToManiac;
    }
    if(matches.isWhereTrueAndEqualsPickManiacPerkToPickedManiacParametersTwo()) {
      return EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereSecond.itsEnemyPickManiacPerkToManiac;
    }
    if(matches.isWhereTrueAndEqualsPickSurvivorPerkToPickedManiacParametersTwo()) {
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
  bool isStopCustomTimer;
  int iterationCustomTimer;

  DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(this.isLoading,this.isLoadingForButton,this.user,this.matches,this.isStopCustomTimer,this.iterationCustomTimer);

  EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst get getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst {
    if(isLoading) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.isLoading;
    }
    if(matches.isCompleted) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.ready;
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
  bool isStopCustomTimer;
  int iterationCustomTimer;

  DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(this.isLoading,this.isLoadingForButton,this.user,this.matches,this.isStopCustomTimer,this.iterationCustomTimer);

  EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond get getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond {
    if(isLoading) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.isLoading;
    }
    if(matches.isCompleted) {
      return EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.ready;
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
        if(event.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst == EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndStopTimer
            || event.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst == EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndStopTimer)
        {
          _utilityCustomTimerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst();
          _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst();
          return;
        }
        _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst();
      });
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond
      .stream
      .listen((event) {
        if(event.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond == EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMyManiacAndStopTimer
            || event.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond == EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond.itsMySurvivorAndStopTimer)
        {
          _utilityCustomTimerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond();
          _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond();
          return;
        }
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches.listModel}");
      /// SYSTEM PICKED LAST MAPS TO PICKED MANIAC
      debugPrint("System: Now Pick Last Maniac");
      _listViewModelFirstSystemPickManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsSystemPickMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE BANED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches.listModel}");
      /// STAGE BAN MANIAC
      debugPrint("You turns Ban Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maniacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches
          .listModel[intInput];
      _listViewModelFirstBanManiac(maniacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches.listModel}");
      /// STAGE PICK MANIAC
      debugPrint("You turns Pick Maniac (index): ");
      final input = stdin.readLineSync();
      final intInput = int.parse(input ?? "");
      final maniacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches
          .listModel[intInput];
      _listViewModelFirstPickManiac(maniacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsMyTurnsBansMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches.listModel}");
      /// SYSTEM PICKED LAST MAPS TO PICKED MANIAC
      debugPrint("System: Now Pick Last Maniac");
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondSystemPickManiac();
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnsSystemPickMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE BANED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches.listModel}");
      debugPrint("Enemy turns Ban Maniac: 0");
      final firstManiacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches
          .listModel[0];
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondBanManiac(firstManiacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyTurnPickManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
      /// VIEW LIST MANIAC (WHO CAN BE PICKED)
      debugPrint("ListManiac: ${dataForStagePickAndBanTestMain.matches.getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches.listModel}");
      debugPrint("Enemy turns Pick Maniac: 0");
      final firstManiacWhereMatchBalance = dataForStagePickAndBanTestMain
          .matches
          .getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches
          .listModel[0];
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelSecondPickManiac(firstManiacWhereMatchBalance);
      break;
    case EnumDataForStagePickAndBanTestMainWhereMyUniqueIdByUserWhereFirst.itsEnemyBansMapsToManiac:
      _utilityDataForStagePickAndBanTestMain(dataForStagePickAndBanTestMain);
      /// VIEW LIST PICK MANIAC (CLICK DETAIL INFO (PickedMap,ListPickManiacPerk,ListPickSurvivorPerk))
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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
      debugPrint("ListPickManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListPickManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWhereMatchesForUniqueIdByUserWhereSecondParametersListPickManiacWhereMatchesAndUniqueIdByUserWhereSecond.listModel}");
      /// VIEW LAST LIST PICK MANIAC
      debugPrint("ListPickManiacWhereMatchesNotUniqueIdByUserWhereFirstAndUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListPickManiacWMatchesWhereNotEqualsParametersThree.listModel}");
      /// VIEW LIST BANS MANIAC
      debugPrint("ListBanManiacForUniqueIdByUserWhereFirst: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser.listModel}");
      debugPrint("ListBanManiacForUniqueIdByUserWhereSecond: ${dataForStagePickAndBanTestMain.matches.getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser.listModel}");
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

Future<void> _buildWidgetDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst()
async {
  switch(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.getEnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst) {
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.isLoading:
      debugPrint("isLoading\n");
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndMyTurnsStartTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE MANIAC IS
      debugPrint("You are a maniac");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// START TIMER
      debugPrint("Start timer (Input 'yes'): ");
      final input = stdin.readLineSync();
      if(input != "yes") {
        break;
      }
      _listViewModelMyManiacAndMyTurnsStartTimerWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndWaitEnemySurvivor:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE MANIAC IS
      debugPrint("You are a maniac");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// START TIMER
      debugPrint("Wait enemy survivor");
      await Future.delayed(const Duration(seconds: 1));
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelMyManiacAndWaitEnemySurvivorWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndStopTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE MANIAC IS
      debugPrint("You are a maniac");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// STOP TIMER
      debugPrint("Stop timer (Input 'yes'): ");
      final input = stdin.readLineSync();
      if(input != "yes") {
        break;
      }
      await _listViewModelMyManiacAndStopTimerWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMyManiacAndNextRound:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// VIEW WHO HAS WON
      debugPrint("Win Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getUniqueIdByUserWhoWinRoundWhereFirstItemUnfinishedListRoundWMatchesParametersThree}");
      /// NEXT ROUND
      await Future.delayed(const Duration(seconds: 1));
      /// TO PRODUCTION CODE NO LIST VIEW (Exception: For UniqueIdByUserWhereFirst)
      _listViewModelMyManiacAndNextRoundWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndWaitEnemyManiac:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE SURVIVOR IS
      debugPrint("You are a survivor");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// START TIMER
      debugPrint("Wait enemy maniac");
      await Future.delayed(const Duration(seconds: 1));
      /// TO PRODUCTION CODE NO LIST VIEW
      _listViewModelMySurvivorAndWaitEnemyManiacWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndMyTurnsStartTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE SURVIVOR IS
      debugPrint("You are a survivor");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// START TIMER
      debugPrint("Start timer (Input 'yes'): ");
      final input = stdin.readLineSync();
      if(input != "yes") {
        break;
      }
      _listViewModelMySurvivorAndMyTurnsStartTimerWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndStopTimer:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW WHO THE SURVIVOR IS
      debugPrint("You are a survivor");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// STOP TIMER
      debugPrint("Stop timer (Input 'yes'): ");
      final input = stdin.readLineSync();
      if(input != "yes") {
        break;
      }
      await _listViewModelMySurvivorAndStopTimerWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.itsMySurvivorAndNextRound:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW NUMBER ROUND
      debugPrint("Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}");
      /// VIEW MANIAC TO ROUND
      debugPrint("Maniac: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches}");
      /// VIEW CHASE TIME
      debugPrint("Chase Time (You): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWFirstUniqueIdByUser}");
      debugPrint("Chase Time (Player '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'): ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.numberOfMilliSecondsTheSurvivorRanWSecondUniqueIdByUser}");
      /// VIEW WHO HAS WON
      debugPrint("Win Round: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getUniqueIdByUserWhoWinRoundWhereFirstItemUnfinishedListRoundWMatchesParametersThree}");
      /// NEXT ROUND
      await Future.delayed(const Duration(seconds: 1));
      /// TO PRODUCTION CODE NO LIST VIEW (Exception: For UniqueIdByUserWhereFirst)
      _listViewModelMySurvivorAndNextRoundWhereMyUniqueIdByUserWhereFirst();
      break;
    case EnumDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.ready:
      _utilityDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
      /// VIEW LIST ROUND
      debugPrint("ListRoundWhereMatches: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.listRoundWMatches.listModel}");
      /// VIEW WHO HAS WON
      debugPrint("Won Match: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() ? "WON" : "LOST"}");
      /// VIEW SCORE
      debugPrint("Score: '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.firstUniqueIdByUser}' ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.getScoreParameterListRoundWhereMatches} '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'");
      /// VIEW RESULT RATING POINTS
      debugPrint("ResultRatingPointsForUniqueIdByUserWhereFirst: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.resultRatingPointsWFirstUniqueIdByUser}");
      debugPrint("ResultRatingPointsForUniqueIdByUserWhereSecond: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.resultRatingPointsWSecondUniqueIdByUser}");
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
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst = DataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst(false, false, _dataSourceGetUser, _dataForStagePickAndBanTestMain!.matches.getClone,false,0);
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.insertListRoundWMatchesWhereBeforeCallIteratorParametersThree();
  final textLogAction = "${matches?.textLogAction}\nSystem: start '${matches?.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Maniac '${matches?.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  return;
}

/// MY MANIAC AND MY TURNS START TIMER WHERE MY UNIQUE ID BY USER WHERE FIRST
void _listViewModelMyManiacAndMyTurnsStartTimerWhereMyUniqueIdByUserWhereFirst() {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateWhereIsStartTimerWFirstUniqueIdByUserSettingTrueParameterListModel();
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' start timer. The maniac is ready, we are waiting for a survivor";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// MY MANIAC AND WAIT ENEMY SURVIVOR WHERE MY UNIQUE ID BY USER WHERE FIRST
void _listViewModelMyManiacAndWaitEnemySurvivorWhereMyUniqueIdByUserWhereFirst() {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateRoundWhereMatchesWhereTrueQIsStartTimerForUniqueIdByUserWhereSecondParameterListRoundWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' start timer. The survivor is ready. Let the escape begin";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// MY MANIAC AND STOP TIMER WHERE MY UNIQUE ID BY USER WHERE FIRST
Future<void> _listViewModelMyManiacAndStopTimerWhereMyUniqueIdByUserWhereFirst()
async {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isStopCustomTimer = true;
  await Future.delayed(const Duration(seconds: 1));
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateRoundWhereMatchesWhereFalseQIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsSwapRoleManiacForUniqueIdByUserWhereFirstAndNextOrEndFromNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer ?? 0);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' stop timer (Time: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer ?? 0}). The maniac stopped the timer";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isStopCustomTimer = false;
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer = 0;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// MY MANIAC AND NEXT ROUND WHERE MY UNIQUE ID BY USER WHERE FIRST
void _listViewModelMyManiacAndNextRoundWhereMyUniqueIdByUserWhereFirst() {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateRoundWhereMatchesWhereNameByEndOfTheRoundQEnumTurnOfManiacsAndEndOfTheRoundParameterListRoundWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nSystem: end '${matches?.getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Won Round '${matches?.getUniqueIdByUserWhoWinRoundWhereLastItemFinishedListRoundWMatchesParametersThree}'. Maniac '${matches?.getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  if(matches?.isEmptyByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() ?? false) {
    _firstBranchOneQListViewModelMyManiacAndNextRoundWhereMyUniqueIdByUserWhereFirst(matches!,textLogAction);
    return;
  }
  if(matches?.isLengthByListFinishedRoundWhereMatchesMoreThanLengthByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() ?? false) {
    _secondBranchOneQListViewModelMyManiacAndNextRoundWhereMyUniqueIdByUserWhereFirst(matches!,textLogAction);
    return;
  }
  final newTextLogAction = "$textLogAction\nSystem: start '${matches?.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Maniac '${matches?.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,newTextLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

void _firstBranchOneQListViewModelMyManiacAndNextRoundWhereMyUniqueIdByUserWhereFirst(Matches matches,String textLogAction) {
  final newTextLogAction = "$textLogAction\nSystem: completed match. Won Match '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() ? _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.firstUniqueIdByUser : _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMainEND(matches,newTextLogAction,_dataSourceGetStatsForUserWhereFirst,_dataSourceGetStatsForUserWhereSecond);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

void _secondBranchOneQListViewModelMyManiacAndNextRoundWhereMyUniqueIdByUserWhereFirst(Matches matches,String textLogAction) {
  if(matches.isWhereFinishedListRoundWMatchesAndWereWonByOneUser()) {
    final newTextLogAction = "$textLogAction\nSystem: completed match. Won Match '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() ? _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.firstUniqueIdByUser : _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'";
    _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMainEND(matches,newTextLogAction,_dataSourceGetStatsForUserWhereFirst,_dataSourceGetStatsForUserWhereSecond);
    _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
    _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
    return;
  }
  final newTextLogAction = "$textLogAction\nSystem: start '${matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Maniac '${matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches,newTextLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// MY SURVIVOR AND WAIT ENEMY MANIAC WHERE MY UNIQUE ID BY USER WHERE FIRST
void _listViewModelMySurvivorAndWaitEnemyManiacWhereMyUniqueIdByUserWhereFirst() {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateRoundWhereMatchesWhereTrueQIsStartTimerForUniqueIdByUserWhereSecondParameterListRoundWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' start timer. The maniac is ready, we are waiting for a survivor";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// MY SURVIVOR AND MY TURNS START TIMER WHERE MY UNIQUE ID BY USER WHERE FIRST
void _listViewModelMySurvivorAndMyTurnsStartTimerWhereMyUniqueIdByUserWhereFirst() {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateWhereIsStartTimerWFirstUniqueIdByUserSettingTrueParameterListModel();
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' start timer. The survivor is ready. Let the escape begin";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// MY SURVIVOR AND STOP TIMER WHERE MY UNIQUE ID BY USER WHERE FIRST
Future<void> _listViewModelMySurvivorAndStopTimerWhereMyUniqueIdByUserWhereFirst()
async {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isStopCustomTimer = true;
  await Future.delayed(const Duration(seconds: 1));
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateRoundWhereMatchesWhereFalseQIsStartTimerForUniqueIdByUserWhereFirstAndIsStartTimerForUniqueIdByUserWhereSecondAndIsSwapRoleManiacForUniqueIdByUserWhereFirstAndNextOrEndFromNumberOfMilliSecondsTheSurvivorRanForUniqueIdByUserWhereFirstParameterListRoundWhereMatches(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer ?? 0);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' stop timer (Time: ${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer ?? 0}). The survivor stopped the timer";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,textLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isStopCustomTimer = false;
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer = 0;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}


/// MY SURVIVOR AND NEXT ROUND WHERE MY UNIQUE ID BY USER WHERE FIRST
void _listViewModelMySurvivorAndNextRoundWhereMyUniqueIdByUserWhereFirst() {
  if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton ?? false) {
    return;
  }
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = true;
  final matches = _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches;
  matches
      ?.updateRoundWhereMatchesWhereNameByEndOfTheRoundQEnumTurnOfManiacsAndEndOfTheRoundParameterListRoundWhereMatches();
  final textLogAction = "${matches?.textLogAction}\nSystem: end '${matches?.getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Won Round '${matches?.getUniqueIdByUserWhoWinRoundWhereLastItemFinishedListRoundWMatchesParametersThree}'. Maniac '${matches?.getLastItemFinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  if(matches?.isEmptyByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() ?? false) {
    _firstBranchOneQListViewModelMySurvivorAndNextRoundWhereMyUniqueIdByUserWhereFirst(matches!,textLogAction);
    return;
  }
  if(matches?.isLengthByListFinishedRoundWhereMatchesMoreThanLengthByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() ?? false) {
    _secondBranchOneQListViewModelMySurvivorAndNextRoundWhereMyUniqueIdByUserWhereFirst(matches!,textLogAction);
    return;
  }
  final newTextLogAction = "$textLogAction\nSystem: start '${matches?.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Maniac '${matches?.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches!,newTextLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

void _firstBranchOneQListViewModelMySurvivorAndNextRoundWhereMyUniqueIdByUserWhereFirst(Matches matches,String textLogAction) {
  final newTextLogAction = "$textLogAction\nSystem: completed match. Won Match '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() ? _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.firstUniqueIdByUser : _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMainEND(matches,newTextLogAction,_dataSourceGetStatsForUserWhereFirst,_dataSourceGetStatsForUserWhereSecond);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

void _secondBranchOneQListViewModelMySurvivorAndNextRoundWhereMyUniqueIdByUserWhereFirst(Matches matches,String textLogAction) {
  if(matches.isWhereFinishedListRoundWMatchesAndWereWonByOneUser()) {
    final newTextLogAction = "$textLogAction\nSystem: completed match. Won Match '${_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() ? _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.firstUniqueIdByUser : _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!.matches.secondUniqueIdByUser}'";
    _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMainEND(matches,newTextLogAction,_dataSourceGetStatsForUserWhereFirst,_dataSourceGetStatsForUserWhereSecond);
    _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
    _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
    return;
  }
  final newTextLogAction = "$textLogAction\nSystem: start '${matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.round}' round. Maniac '${matches.getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches.pickManiacWMatches.nameSurvivorPerk}'";
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.matches = _dataSourceDataForListRoundTestMain(matches,newTextLogAction);
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isLoadingForButton = false;
  _streamControllerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst.sink.add(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst!);
}

/// INIT LIST ROUND WHERE MY UNIQUE ID BY USER WHERE SECOND
Future<void> _listViewModelInitListRoundWhereMyUniqueIdByUserWhereSecond()
async {
  _dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond = DataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond(false, false, _dataSourceGetUser, _dataForStagePickAndBanTestMain!.matches.getClone,false,0);
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
  final textLogAction = "${matches?.textLogAction}\nSystem: picked man '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.bansMapsToManiac);
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
  final textLogAction = "${matches?.textLogAction}\nSystem: picked man '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.bansMapsToManiac);
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
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maps '${matches?.getLastItemMapsWhereNotBannedMaps.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isNotEmptyByListManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _secondBranchOneQListViewModelFirstSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickMPNotEqualsLengthListMPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.systemPickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelFirstSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.systemPickSurvivorPerkToManiac);
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
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maps '${matches?.getLastItemMapsWhereNotBannedMaps.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isNotEmptyByListManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _secondBranchOneQListViewModelSecondSystemPickMapsToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickMPNotEqualsLengthListMPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.systemPickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelSecondSystemPickMapsToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.systemPickSurvivorPerkToManiac);
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
      ?.insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maniac perk '${matches?.getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstSystemPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstSystemPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.systemPickSurvivorPerkToManiac);
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
      ?.insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked maniac perk '${matches?.getListManiacPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondSystemPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondSystemPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.systemPickSurvivorPerkToManiac);
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
      ?.insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked survivor perk '${matches?.getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiac);
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
      ?.insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree();
  final textLogAction = "${matches?.textLogAction}\nSystem: picked survivor perk '${matches?.getListSurvivorPerkForLastItemPickManiacWhereMatchesParameterMatchBalance.listModel}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches?.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,matches.isStageNamedWFirstUniqueIdByUser,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST BAN MANIAC
void _listViewModelFirstBanManiac(ManiacWMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(maniacWhereMatchBalance.name.name);
  final textLogAction = (matches?.textLogAction.isNotEmpty ?? false)
      ? "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' banned maniac '${maniacWhereMatchBalance.name.name}'"
      : "Player: '${matches?.firstUniqueIdByUser}' banned maniac '${maniacWhereMatchBalance.name.name}'";
  if(matches?.isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstBanManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance() ?? false) {
    _secondBranchOneQListViewModelFirstBanManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumStageNamed.banManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelFirstBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.systemPickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND BAN MANIAC
void _listViewModelSecondBanManiac(ManiacWMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertBanManiacWMatchesFromNameParametersDebutWMatchesAndSecondUniqueIdByUser(maniacWhereMatchBalance.name.name);
  final textLogAction = (matches?.textLogAction.isNotEmpty ?? false)
      ? "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' banned maniac '${maniacWhereMatchBalance.name.name}'"
      : "Player: '${matches?.secondUniqueIdByUser}' banned maniac '${maniacWhereMatchBalance.name.name}'";
  if(matches?.isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondBanManiac(matches!,textLogAction);
    return;
  }
  if(matches?.isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance() ?? false) {
    _secondBranchOneQListViewModelSecondBanManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumStageNamed.banManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.pickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _secondBranchOneQListViewModelSecondBanManiac(Matches matches, String textLogAction) {
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.systemPickManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// FIRST PICK MANIAC
void _listViewModelFirstPickManiac(ManiacWMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndFirstUniqueIdByUser(maniacWhereMatchBalance.name.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' picked maniac '${maniacWhereMatchBalance.name.name}'";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumStageNamed.bansMapsToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

/// SECOND PICK MANIAC
void _listViewModelSecondPickManiac(ManiacWMatchBalance maniacWhereMatchBalance) {
  if(_dataForStagePickAndBanTestMain?.isLoadingForButton ?? false) {
    return;
  }
  _dataForStagePickAndBanTestMain?.isLoadingForButton = true;
  final matches = _dataForStagePickAndBanTestMain?.matches;
  matches
      ?.insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndSecondUniqueIdByUser(maniacWhereMatchBalance.name.name);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' picked maniac '${maniacWhereMatchBalance.name.name}'";
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumStageNamed.bansMapsToManiac);
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
      ?.insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(maps.getClone);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' banned maps '${maps.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumStageNamed.systemPickMapsToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumStageNamed.bansMapsToManiac);
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
      ?.insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(maps.getClone);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' banned maps '${maps.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne() ?? false) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumStageNamed.systemPickMapsToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumStageNamed.bansMapsToManiac);
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
      ?.insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(maniacPerk.getClone);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' picked maniac perk '${maniacPerk.perk.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isWhereLengthPickManiacPerkEqualsNecessaryLengthPickManiacPerkParametersTwo() ?? false) {
    _firstBranchOneQListViewModelFirstPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumStageNamed.pickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickManiacPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.systemPickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.pickManiac);
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
      ?.insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk.getClone);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' picked maniac perk '${maniacPerk.perk.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isWhereLengthPickManiacPerkEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST() ?? false) {
    _firstBranchOneQListViewModelSecondPickManiacPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumStageNamed.pickManiacPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondPickManiacPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickManiacPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.pickManiacPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.systemPickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.pickManiac);
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
      ?.insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk.getClone);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.firstUniqueIdByUser}' picked survivor perk '${survivorPerk.perk.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isPickSurvivorPerkForUniqueIdByUserWhereFirstEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelFirstPickSurvivorPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,true,EnumStageNamed.pickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelFirstPickSurvivorPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,false,EnumStageNamed.pickManiac);
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
      ?.insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk.getClone);
  final textLogAction = "${matches?.textLogAction}\nPlayer: '${matches?.secondUniqueIdByUser}' picked survivor perk '${survivorPerk.perk.name}' to maniac '${matches?.getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches.nameSurvivorPerk}'";
  if(matches?.isPickSurvivorPerkForUniqueIdByUserWhereSecondEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() ?? false) {
    _firstBranchOneQListViewModelSecondPickSurvivorPerkToManiac(matches!,textLogAction);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches!,textLogAction,false,EnumStageNamed.pickSurvivorPerkToManiac);
  _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
  _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
}

void _firstBranchOneQListViewModelSecondPickSurvivorPerkToManiac(Matches matches, String textLogAction) {
  if(matches.isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.pickSurvivorPerkToManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.banManiac);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  if(matches.isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance()) {
    _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.isCompleted);
    _dataForStagePickAndBanTestMain?.isLoadingForButton = false;
    _streamControllerForDataForStagePickAndBanTestMain.sink.add(_dataForStagePickAndBanTestMain!);
    return;
  }
  _dataForStagePickAndBanTestMain?.matches = _dataSourceDataForStagePickAndBanTestMain(matches,textLogAction,true,EnumStageNamed.pickManiac);
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

Future<void> _utilityCustomTimerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst()
async {
  int random = Random().nextInt(1000);
  while(true) {
    if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.isStopCustomTimer ?? false) {
      _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer = random;
      break;
    }
    await Future.delayed(const Duration(seconds: 1));
    random = Random().nextInt(1000);
    _dataForListRoundTestMainWhereMyUniqueIdByUserWhereFirst?.iterationCustomTimer = random;
  }
}

Future<void> _utilityCustomTimerForDataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond()
async {
  int random = Random().nextInt(1000);
  while(true) {
    if(_dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond?.isStopCustomTimer ?? false) {
      _dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond?.iterationCustomTimer = random;
      break;
    }
    await Future.delayed(const Duration(seconds: 1));
    random = Random().nextInt(1000);
    _dataForListRoundTestMainWhereMyUniqueIdByUserWhereSecond?.iterationCustomTimer = random;
  }
}
/* END Utility */

/* START DataSource */
Matches _dataSourceDataForStagePickAndBanTestMain(Matches matches,String textLogAction,bool isStageBanOrPickForUniqueIdByUserWhereFirst, EnumStageNamed enumBanOrPickNamed) {
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      enumBanOrPickNamed.name,
      textLogAction,
      matches.matchBalance.getClone,
      matches.firstUniqueIdByUser,
      matches.secondUniqueIdByUser,
      isStageBanOrPickForUniqueIdByUserWhereFirst,
      matches.listBanManiacWMatches.getClone,
      matches.listPickManiacWMatches.getClone,
      matches.listRoundWMatches.getClone,
      matches.resultRatingPointsWFirstUniqueIdByUser,
      matches.resultRatingPointsWSecondUniqueIdByUser);
}

Matches _dataSourceDataForListRoundTestMain(Matches matches,String textLogAction) {
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      matches.isCompleted,
      matches.enumStageNamed.name,
      textLogAction,
      matches.matchBalance.getClone,
      matches.firstUniqueIdByUser,
      matches.secondUniqueIdByUser,
      matches.isStageNamedWFirstUniqueIdByUser,
      matches.listBanManiacWMatches.getClone,
      matches.listPickManiacWMatches.getClone,
      matches.listRoundWMatches.getClone,
      matches.resultRatingPointsWFirstUniqueIdByUser,
      matches.resultRatingPointsWSecondUniqueIdByUser);
}

Matches _dataSourceDataForListRoundTestMainEND(Matches matches,String textLogAction,Stats statsForUniqueIdByUserWhereFirst,Stats statsForUniqueIdByUserWhereSecond) {
  return Matches(
      matches.uniqueId,
      matches.creationTime,
      true,
      matches.enumStageNamed.name,
      textLogAction,
      matches.matchBalance.getClone,
      matches.firstUniqueIdByUser,
      matches.secondUniqueIdByUser,
      matches.isStageNamedWFirstUniqueIdByUser,
      matches.listBanManiacWMatches.getClone,
      matches.listPickManiacWMatches.getClone,
      matches.listRoundWMatches.getClone,
      matches.getResultRatingPointsForUniqueIdByUserWhereFirstFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(statsForUniqueIdByUserWhereFirst.ratingPoints,statsForUniqueIdByUserWhereSecond.ratingPoints),
      matches.getResultRatingPointsForUniqueIdByUserWhereSecondFromRatingPointsForUniqueIdByUserWhereFirstAndRatingPointsForUniqueIdByUserWhereSecondParameterListRoundWhereMatches(statsForUniqueIdByUserWhereFirst.ratingPoints,statsForUniqueIdByUserWhereSecond.ratingPoints));
}

User get _dataSourceGetUser {
  return User("MyPlayer 51d1a9f2-4fb0-11ee-be56-0242ac120002", DateTime.now());
}

Stats get _dataSourceGetStatsForUserWhereFirst {
  return const Stats("MyPlayer 51d1a9f2-4fb0-11ee-be56-0242ac120002",1,0,0,300);
}

Stats get _dataSourceGetStatsForUserWhereSecond {
  return const Stats("EnemyPlayer 5f8cd3aa-4fb0-11ee-be56-0242ac120002",1,0,0,300);
}

MatchBalance get _dataSourceGetMatchBalance {
  /// 3 Round
  /// 9 Mans
  /// 3-5 Maps To Maniac
  /// 0-2 Pick Maniac/Survivor Perk to Maniac
  return MatchBalance(1,3,ListManiacWMatchBalance([
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
    ManiacWMatchBalance(
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
      EnumStageNamed.banManiac.name,
      "",
      _dataSourceGetMatchBalance,
      "MyPlayer 51d1a9f2-4fb0-11ee-be56-0242ac120002",
      "EnemyPlayer 5f8cd3aa-4fb0-11ee-be56-0242ac120002",
      true,
      ListBanManiacWMatches(List.empty(growable: true)),
      ListPickManiacWMatches(List.empty(growable: true)),
      ListRoundWMatches(List.empty(growable: true)),
      0,
      0);
}
/* END DataSource */