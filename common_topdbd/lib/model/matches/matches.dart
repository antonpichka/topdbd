import 'dart:core';

import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/enum_round_status.dart';
import 'package:common_topdbd/model/round_w_matches/round_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Matches extends BaseModel {
  final DateTime creationTime;
  final String textLogAction;
  final String firstUniqueIdByUser;
  final String secondUniqueIdByUser;
  final String firstUsernameByModel;
  final String secondUsernameByModel;
  final DebutWMatches debutWMatches;
  final MiddlegameWMatches middlegameWMatches;
  final EndgameWMatches endgameWMatches;

  const Matches(super.uniqueId, this.creationTime,this.textLogAction,this.firstUniqueIdByUser,this.secondUniqueIdByUser,this.firstUsernameByModel,this.secondUsernameByModel,this.debutWMatches,this.middlegameWMatches,this.endgameWMatches);

  @override
  Matches get getClone => Matches(uniqueId, creationTime, textLogAction, firstUniqueIdByUser, secondUniqueIdByUser, firstUsernameByModel, secondUsernameByModel,debutWMatches.getClone, middlegameWMatches.getClone, endgameWMatches.getClone);

  @override
  String toString() {
    return "Matches(uniqueId: $uniqueId, "
        "creationTime: $creationTime, "
        "textLogAction: $textLogAction, "
        "firstUniqueIdByUser: $firstUniqueIdByUser, "
        "secondUniqueIdByUser: $secondUniqueIdByUser, "
        "firstUsernameByModel: $firstUsernameByModel, "
        "secondUsernameByModel: $secondUsernameByModel, "
        "debutWMatches: $debutWMatches, "
        "middlegameWMatches: $middlegameWMatches, "
        "endgameWMatches: $endgameWMatches)";
  }

  Matches getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUniqueIdByUserTurnsBanManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUniqueIdByUserTurnsPickManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersNine(EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemPickMapsToPickedManiacParametersTwo,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            debutWMatches.isStageNamedWFirstUniqueIdByUser,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUIBUTurnsPickManiacPerkToPickedManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSystemPickManiacFromOneParametersNine(EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemPickManiacParametersTwo,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            debutWMatches.isStageNamedWFirstUniqueIdByUser,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSystemPickManiacPerkToPickedManiacFromOneParametersNine(EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemPickManiacPerkToPickedManiacParametersTwo,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            debutWMatches.isStageNamedWFirstUniqueIdByUser,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSystemPickSurvivorPerkToPickedManiacFromOneParametersNine(EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemPickSurvivorPerkToPickedManiacParametersTwo,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            debutWMatches.isStageNamedWFirstUniqueIdByUser,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSecondUniqueIdByUserTurnsBanManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSecondUniqueIdByUserTurnsBanManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSecondUniqueIdByUserTurnsPickManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSecondUniqueIdByUserTurnsPickManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSecondUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSecondUIBUTurnsPickManiacPerkToPickedManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromThreeParametersNine(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromIndexParametersFour(index),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
            debutWMatches.isCompleted,
            enumStageNamedByDebutWMatches.name,
            debutWMatches.matchBalance.getClone,
            isStageNamedWFirstUniqueIdByUserByDebutWMatches,
            debutWMatches.listBanManiacWMatches.getClone,
            debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndIsCompletedByDebutWMatchesParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereIsCompletedByDebutWMatchesParametersTwo,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        DebutWMatches(
          true,
          debutWMatches.enumStageNamed.name,
          debutWMatches.matchBalance.getClone,
          debutWMatches.isStageNamedWFirstUniqueIdByUser,
          debutWMatches.listBanManiacWMatches.getClone,
          debutWMatches.listPickManiacWMatches.getClone
        ),
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndMyManiacWMyTurnsClickStartTimerParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereMyManiacWMyTurnsClickStartTimerParametersThree,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndMySurvivorWMyTurnsClickStartTimerParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereMySurvivorWMyTurnsClickStartTimerParametersThree,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndMyManiacWEnemyTurnsClickStartTimerParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereMyManiacWEnemyTurnsClickStartTimerParametersThree,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndMySurvivorWEnemyTurnsClickStartTimerParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereMySurvivorWEnemyTurnsClickStartTimerParametersThree,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndMyManiacWSurvivorWMyClickStopTimerFromOneParametersNine(int numberOfMilliSecondsTheSurvivorRan) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereMyManiacWSurvivorWMyClickStopTimerFromOneParametersThree(numberOfMilliSecondsTheSurvivorRan),
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndSystemNextRoundWCompletedMatchParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemNextRoundWCompletedMatch,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches get getMatchesWhereNewAndSystemNextRoundWStartRoundParametersNine {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemNextRoundWStartRound,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        middlegameWMatches.getClone,
        endgameWMatches.getClone);
  }

  Matches getMatchesWhereNewAndIsCompletedByMiddlegameWMatchesFromTwoParametersNine(int ratingPointsByStatsWFirstUniqueIdByUser, int ratingPointsByStatsWSecondUniqueIdByUser) {
    return Matches(
        uniqueId,
        creationTime,
        textLogAction,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
        firstUsernameByModel,
        secondUsernameByModel,
        debutWMatches.getClone,
        MiddlegameWMatches(
            true,
            middlegameWMatches.listRoundWMatches.getClone),
        EndgameWMatches(
            middlegameWMatches
                .listRoundWMatches
                .getNumberOfRatingPointsPerMatchWFirstUniqueIdByUserWhereNewStatsFromTwo(ratingPointsByStatsWFirstUniqueIdByUser, ratingPointsByStatsWSecondUniqueIdByUser),
            middlegameWMatches
                .listRoundWMatches
                .getNumberOfRatingPointsPerMatchWSecondUniqueIdByUserWhereNewStatsFromTwo(ratingPointsByStatsWFirstUniqueIdByUser, ratingPointsByStatsWSecondUniqueIdByUser)
        ));
  }

  List<PickManiacWMatches> get getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser {
    return debutWMatches
        .listPickManiacWMatches
        .getListPickManiacWMatchesWhereEqualsFromUniqueIdByUserParameterListModel(firstUniqueIdByUser);
  }

  List<PickManiacWMatches> get getListPickManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser {
    return debutWMatches
        .listPickManiacWMatches
        .getListPickManiacWMatchesWhereEqualsFromUniqueIdByUserParameterListModel(secondUniqueIdByUser);
  }

  List<PickManiacWMatches> get getListPickManiacWMatchesWhereNotEqualsParametersThree {
    return debutWMatches
        .listPickManiacWMatches
        .getListPickManiacWMatchesWhereNotEqualsFromTwoParameterListModel(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  List<BanManiacWMatches> get getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndFirstUniqueIdByUser {
    return debutWMatches
        .listBanManiacWMatches
        .getListBanManiacWMatchesWhereEqualsFromUniqueIdByUserParameterListModel(firstUniqueIdByUser);
  }

  List<BanManiacWMatches> get getListBanManiacWMatchesWhereEqualsParametersDebutWMatchesAndSecondUniqueIdByUser {
    return debutWMatches
        .listBanManiacWMatches
        .getListBanManiacWMatchesWhereEqualsFromUniqueIdByUserParameterListModel(secondUniqueIdByUser);
  }

  List<ManiacPerkWMatchBalance> get getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo {
    return debutWMatches
        .getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  List<ManiacPerkWMatchBalance> get getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwoFIRST {
    return debutWMatches
        .getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  List<SurvivorPerkWMatchBalance> get getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo {
    return debutWMatches
        .getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  List<SurvivorPerkWMatchBalance> get getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwoFIRST {
    return debutWMatches
        .getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  String get getFormattedParameterTextLogAction {
    return "\n<-------TEXT LOG ACTION------->\n"
        "$textLogAction"
        "\n<-------TEXT LOG ACTION------->\n";
  }

  String get getStringWhoTheManiacWhereFirstItemUnfinishedListRoundWMatchesParametersThree {
    if(middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isRoleManiacWFirstUniqueIdByUser)
    {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  String get getStringWhoTheManiacWhereFirstUIBUAndFirstItemUnfinishedListRoundWMatchesParametersTwo {
    return getStringWhoTheManiacWhereFirstItemUnfinishedListRoundWMatchesParametersThree == firstUniqueIdByUser
        ? "You"
        : secondUsernameByModel;
  }

  String get getStringWhoWinRoundWhereFirstItemUnfinishedListRoundWMatchesParametersThree {
    if(middlegameWMatches
        .listRoundWMatches
        .getUnfinishedListRoundWMatchesParameterListModel
        .first
        .isWhereWinRoundWFirstUniqueIdByUserParametersTwo())
    {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  String get getStringWhoWinRoundWhereFirstUIBUAndFirstItemUnfinishedListRoundWMatchesParametersThree {
    return getStringWhoWinRoundWhereFirstItemUnfinishedListRoundWMatchesParametersThree == firstUniqueIdByUser
        ? "You"
        : secondUsernameByModel;
  }

  String get getStringWhoTheManiacWhereLastItemFinishedListRoundWMatchesParametersThree {
    if(middlegameWMatches
        .listRoundWMatches
        .getFinishedListRoundWMatchesParameterListModel
        .last
        .isRoleManiacWFirstUniqueIdByUser)
    {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  String get getStringWhoWinRoundWhereLastItemFinishedListRoundWMatchesParametersThree {
    if(middlegameWMatches
        .listRoundWMatches
        .getFinishedListRoundWMatchesParameterListModel
        .last
        .isWhereWinRoundWFirstUniqueIdByUserParametersTwo())
    {
      return firstUniqueIdByUser;
    }
    return secondUniqueIdByUser;
  }

  String get getStringWhoWinRoundWhereDetailsAndLastItemFinishedListRoundWMatchesParametersFour {
    return getStringWhoWinRoundWhereLastItemFinishedListRoundWMatchesParametersThree == firstUniqueIdByUser
        ? "$firstUniqueIdByUser($firstUsernameByModel)"
        : "$secondUniqueIdByUser($secondUsernameByModel)";
  }

  String get getStringWhoWinMatchWhereDetailsParametersFive {
    if(middlegameWMatches
        .listRoundWMatches
        .isWhereWinMatchWFirstUniqueIdByUser())
    {
      return "$firstUniqueIdByUser($firstUsernameByModel)";
    }
    return "$secondUniqueIdByUser($secondUsernameByModel)";
  }

  @protected
  String getStringWhereFirstUniqueIdByUserTurnsBanManiacFromIndexParametersFour(int index) {
    return textLogAction.isNotEmpty
        ? "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': banned maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'"
        : "User '$firstUniqueIdByUser($firstUsernameByModel)': banned maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'";
  }

  @protected
  String getStringWhereFirstUniqueIdByUserTurnsPickManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': picked maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'";
  }

  @protected
  String getStringWhereFirstUniqueIdByUserTurnsBansMapsToPickedManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': banned maps '${debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String get getStringWhereSystemPickMapsToPickedManiacParametersTwo {
    return "$textLogAction\nSystem: picked maps '${debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches.last.name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String getStringWhereFirstUIBUTurnsPickManiacPerkToPickedManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': picked maniac perk '${getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String getStringWhereFirstUIBUTurnsPickSurvivorPerkToPickedManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': picked survivor perk '${getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String get getStringWhereSystemPickManiacParametersTwo {
    return "$textLogAction\nSystem: picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String get getStringWhereSystemPickManiacPerkToPickedManiacParametersTwo {
    return "$textLogAction\nSystem: picked maniac perk '${debutWMatches.getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listManiacPerkWMatchBalance.listModel}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String get getStringWhereSystemPickSurvivorPerkToPickedManiacParametersTwo {
    return "$textLogAction\nSystem: picked survivor perk '${debutWMatches.getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listSurvivorPerkWMatchBalance.listModel}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String getStringWhereSecondUniqueIdByUserTurnsBanManiacFromIndexParametersFour(int index) {
    return textLogAction.isNotEmpty
        ? "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': banned maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'"
        : "User '$secondUniqueIdByUser($secondUsernameByModel)': banned maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'";
  }

  @protected
  String getStringWhereSecondUniqueIdByUserTurnsPickManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': picked maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'";
  }

  @protected
  String getStringWhereSecondUniqueIdByUserTurnsBansMapsToPickedManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': banned maps '${debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String getStringWhereSecondUIBUTurnsPickManiacPerkToPickedManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': picked maniac perk '${getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String getStringWhereSecondUIBUTurnsPickSurvivorPerkToPickedManiacFromIndexParametersFour(int index) {
    return "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': picked survivor perk '${getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String get getStringWhereIsCompletedByDebutWMatchesParametersTwo {
    return "$textLogAction\nSystem: start '${middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round} round'. "
        "Maniac - '${middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}'";
  }

  @protected
  String get getStringWhereMyManiacWMyTurnsClickStartTimerParametersThree {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': start timer. The maniac is ready, we are waiting for a survivor";
  }

  @protected
  String get getStringWhereMySurvivorWMyTurnsClickStartTimerParametersThree {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': start timer. The survivor is ready. Let the escape begin";
  }

  @protected
  String get getStringWhereMyManiacWEnemyTurnsClickStartTimerParametersThree {
    return "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': start timer. The survivor is ready. Let the escape begin";
  }

  @protected
  String get getStringWhereMySurvivorWEnemyTurnsClickStartTimerParametersThree {
    return "$textLogAction\nUser '$secondUniqueIdByUser($secondUsernameByModel)': start timer. The maniac is ready, we are waiting for a survivor";
  }

  @protected
  String getStringWhereMyManiacWSurvivorWMyClickStopTimerFromOneParametersThree(int numberOfMilliSecondsTheSurvivorRan) {
    return "$textLogAction\nUser '$firstUniqueIdByUser($firstUsernameByModel)': stop timer. "
        "Role '$getStringWhereRoleWFirstUIBUAndFirstItemUnfinishedListRoundWMatchesParameterOne'. "
        "Chase Time '$numberOfMilliSecondsTheSurvivorRan'";
  }

  @protected
  String get getStringWhereRoleWFirstUIBUAndFirstItemUnfinishedListRoundWMatchesParameterOne {
    return getStringWhoTheManiacWhereFirstItemUnfinishedListRoundWMatchesParametersThree == firstUniqueIdByUser
        ? "Maniac"
        : "Survivor";
  }

  @protected
  String get getStringWhereSystemNextRoundParametersTwo {
    return "$textLogAction\nSystem: end '${middlegameWMatches.listRoundWMatches.getFinishedListRoundWMatchesParameterListModel.last.round}' round. "
        "Maniac '${middlegameWMatches.listRoundWMatches.getFinishedListRoundWMatchesParameterListModel.last.pickManiacWMatches.name}'. "
        "Won Round '$getStringWhoWinRoundWhereDetailsAndLastItemFinishedListRoundWMatchesParametersFour'";
  }

  @protected
  String get getStringWhereSystemNextRoundWCompletedMatch {
    return "$getStringWhereSystemNextRoundParametersTwo\nSystem: completed match. "
        "Won Match '$getStringWhoWinMatchWhereDetailsParametersFive'";
  }

  @protected
  String get getStringWhereSystemNextRoundWStartRound {
    return "$getStringWhereSystemNextRoundParametersTwo\nSystem: start '${middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.round} round'. "
        "Maniac '${middlegameWMatches.listRoundWMatches.getUnfinishedListRoundWMatchesParameterListModel.first.pickManiacWMatches.name}'";
  }

  void insertBanManiacWMatchesFromIndexParametersDebutWMatchesAndFirstUniqueIdByUser(int index) {
    debutWMatches
        .insertBanManiacWMatchesFromIndexAndUniqueIdByUserParameterListBanManiacWMatches(index,firstUniqueIdByUser);
  }

  void insertBanManiacWMatchesFromIndexParametersDebutWMatchesAndSecondUniqueIdByUser(int index) {
    debutWMatches
        .insertBanManiacWMatchesFromIndexAndUniqueIdByUserParameterListBanManiacWMatches(index,secondUniqueIdByUser);
  }

  void insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndFirstUniqueIdByUser(int index) {
    debutWMatches
        .insertPickManiacWMatchesFromIndexAndUniqueIdByUserParameterListPickManiacWMatches(index,firstUniqueIdByUser);
  }

  void insertPickManiacWMatchesFromIndexParametersDebutWMatchesAndSecondUniqueIdByUser(int index) {
    debutWMatches
        .insertPickManiacWMatchesFromIndexAndUniqueIdByUserParameterListPickManiacWMatches(index,secondUniqueIdByUser);
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(int index) {
    debutWMatches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexAndUniqueIdByUserParameterOne(index,firstUniqueIdByUser);
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(int index) {
    debutWMatches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexAndUniqueIdByUserParameterOne(index,secondUniqueIdByUser);
  }

  void insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(int index) {
    debutWMatches
        .insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(index,firstUniqueIdByUser);
  }

  void insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(int index) {
    debutWMatches
        .insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(index,secondUniqueIdByUser);
  }

  void insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwo(int index) {
    debutWMatches
        .insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(index,firstUniqueIdByUser);
  }

  void insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromIndexParametersTwoFIRST(int index) {
    debutWMatches
        .insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(index,secondUniqueIdByUser);
  }

  void insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertListRoundWMatchesWhereBeforeCallIteratorParametersThree() {
    debutWMatches
        .listPickManiacWMatches
        .sortingWherePickManiacWMatchesWOrderByAscWCreationTimeIterator();
    int round = 1;
    for(PickManiacWMatches itemModel in debutWMatches
        .listPickManiacWMatches
        .listModel)
    {
      final isRoleManiacWFirstUniqueIdByUser = itemModel.uniqueIdByUser == firstUniqueIdByUser
          ? true
          : false;
      middlegameWMatches
          .listRoundWMatches
          .insertFromRoundWMatchesParameterListModel(RoundWMatches(round, itemModel.getClone, EnumRoundStatus.firstManiac.name, isRoleManiacWFirstUniqueIdByUser, false, false, 0, 0));
      round++;
    }
  }

  bool isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkFromOneParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkFromOneParameterOne(secondUniqueIdByUser);
  }

  bool isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkFromOneParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkFromOneParameterOne(secondUniqueIdByUser);
  }

  bool isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkFromOneParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkFromOneParameterOne(secondUniqueIdByUser);
  }

  bool isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  bool isWhereFalseAndEqualsFromOneParametersDebutWMatchesAndFirstUniqueIdByUser(String uniqueIdByUser) {
    return !debutWMatches.isCompleted &&
        firstUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereFalseAndEqualsFromOneParametersMiddlegameWMatchesAndFirstUniqueIdByUser(String uniqueIdByUser) {
    return !middlegameWMatches.isCompleted &&
        firstUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereTrueAndTrueAndEqualsFromOneParametersThree(String uniqueIdByUser) {
    return debutWMatches.isCompleted &&
        middlegameWMatches.isCompleted &&
        firstUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereFalseAndEqualsFromOneParametersDebutWMatchesAndSecondUniqueIdByUser(String uniqueIdByUser) {
    return !debutWMatches.isCompleted &&
        secondUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereFalseAndEqualsFromOneParametersMiddlegameWMatchesAndSecondUniqueIdByUser(String uniqueIdByUser) {
    return !middlegameWMatches.isCompleted &&
        secondUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereTrueAndTrueAndEqualsFromOneParametersThreeFIRST(String uniqueIdByUser) {
    return debutWMatches.isCompleted &&
        middlegameWMatches.isCompleted &&
        secondUniqueIdByUser == uniqueIdByUser;
  }
}