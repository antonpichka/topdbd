import 'dart:core';

import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/enum_round_status.dart';
import 'package:common_topdbd/model/round_w_matches/round_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class Matches extends BaseModel {
  final DateTime creationTime;
  final String textLogAction;
  final String firstUniqueIdByUser;
  final String secondUniqueIdByUser;
  final DebutWMatches debutWMatches;
  final MiddlegameWMatches middlegameWMatches;
  final EndgameWMatches endgameWMatches;

  const Matches(super.uniqueId, this.creationTime,this.textLogAction,this.firstUniqueIdByUser,this.secondUniqueIdByUser,this.debutWMatches,this.middlegameWMatches,this.endgameWMatches);

  @override
  Matches get getClone => Matches(uniqueId, creationTime, textLogAction, firstUniqueIdByUser, secondUniqueIdByUser, debutWMatches.getClone, middlegameWMatches.getClone, endgameWMatches.getClone);

  @override
  String toString() {
    return "Matches(uniqueId: $uniqueId, "
        "creationTime: $creationTime, "
        "textLogAction: $textLogAction, "
        "firstUniqueIdByUser: $firstUniqueIdByUser, "
        "secondUniqueIdByUser: $secondUniqueIdByUser, "
        "debutWMatches: $debutWMatches, "
        "middlegameWMatches: $middlegameWMatches, "
        "endgameWMatches: $endgameWMatches)";
  }

  Matches getNewMatchesFromThree(String textLogAction,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        textLogAction,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
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

  String get getFormattedParameterTextLogAction {
    return "\n<-------TEXT LOG ACTION------->\n"
        "$textLogAction"
        "\n<-------TEXT LOG ACTION------->\n";
  }

  String get getUniqueIdByUserWhoTheManiacWhereFirstItemUnfinishedListRoundWMatchesParametersThree {
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

  String get getUniqueIdByUserWhoWinRoundWhereFirstItemUnfinishedListRoundWMatchesParametersThree {
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

  String get getUniqueIdByUserWhoTheManiacWhereLastItemFinishedListRoundWMatchesParametersThree {
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

  String get getUniqueIdByUserWhoWinRoundWhereLastItemFinishedListRoundWMatchesParametersThree {
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

  void insertBanManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(String name) {
    debutWMatches
        .insertBanManiacWMatchesFromNameAndUniqueIdByUserParameterListBanManiacWMatches(name,firstUniqueIdByUser);
  }

  void insertBanManiacWMatchesFromNameParametersDebutWMatchesAndSecondUniqueIdByUser(String name) {
    debutWMatches
        .insertBanManiacWMatchesFromNameAndUniqueIdByUserParameterListBanManiacWMatches(name,secondUniqueIdByUser);
  }

  void insertPickManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(String name) {
    debutWMatches
        .insertPickManiacWMatchesFromNameAndUniqueIdByUserParameterListPickManiacWMatches(name,firstUniqueIdByUser);
  }

  void insertPickManiacWMatchesFromNameParametersDebutWMatchesAndSecondUniqueIdByUser(String name) {
    debutWMatches
        .insertPickManiacWMatchesFromNameAndUniqueIdByUserParameterListPickManiacWMatches(name,secondUniqueIdByUser);
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromNameParametersTwo(String name) {
    debutWMatches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromNameAndUniqueIdByUserParameterOne(name,firstUniqueIdByUser);
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromNameParametersTwoFIRST(String name) {
    debutWMatches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromNameAndUniqueIdByUserParameterOne(name,secondUniqueIdByUser);
  }

  void insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromNameParametersTwo(String name) {
    debutWMatches
        .insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(name,firstUniqueIdByUser);
  }

  void insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromNameParametersTwoFIRST(String name) {
    debutWMatches
        .insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(name,secondUniqueIdByUser);
  }

  void insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromNameParametersTwo(String name) {
    debutWMatches
        .insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(name,firstUniqueIdByUser);
  }

  void insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromNameParametersTwoFIRST(String name) {
    debutWMatches
        .insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(name,secondUniqueIdByUser);
  }

  bool isWhereLengthPickManiacPerkEqualsNecessaryLengthPickManiacPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthPickManiacPerkEqualsNecessaryLengthPickManiacPerkFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthPickManiacPerkEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthPickManiacPerkEqualsNecessaryLengthPickManiacPerkFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  bool isWhereLengthPickManiacPerkNotEqualsNecessaryLengthPickManiacPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthPickManiacPerkNotEqualsNecessaryLengthPickManiacPerkFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthPickManiacPerkNotEqualsNecessaryLengthPickManiacPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthPickManiacPerkNotEqualsNecessaryLengthPickManiacPerkFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  bool isWhereLengthPickSurvivorPerkEqualsNecessaryLengthPickSurvivorPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthPickSurvivorPerkEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthPickSurvivorPerkEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthPickSurvivorPerkEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  bool isWhereLengthPickSurvivorPerkNotEqualsNecessaryLengthPickSurvivorPerkParametersTwo() {
    return debutWMatches
        .isWhereLengthPickSurvivorPerkNotEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(firstUniqueIdByUser);
  }

  bool isWhereLengthPickSurvivorPerkNotEqualsNecessaryLengthPickSurvivorPerkParametersTwoFIRST() {
    return debutWMatches
        .isWhereLengthPickSurvivorPerkNotEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(secondUniqueIdByUser);
  }

  bool isWhereFalseAndEqualsFromOneParametersDebutWMatchesAndFirstUniqueIdByUser(String uniqueIdByUser) {
    return !debutWMatches.isCompleted &&
        firstUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereFalseAndEqualsFromOneParametersMiddlegameWMatchesAndFirstUniqueIdByUser(String uniqueIdByUser) {
    return !middlegameWMatches.isCompleted &&
        firstUniqueIdByUser == uniqueIdByUser;
  }

  bool isWhereFalseAndEqualsFromOneParametersEndgameWMatchesAndFirstUniqueIdByUser(String uniqueIdByUser) {
    return !endgameWMatches.isCompleted &&
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

  bool isWhereFalseAndEqualsFromOneParametersEndgameWMatchesAndSecondUniqueIdByUser(String uniqueIdByUser) {
    return !endgameWMatches.isCompleted &&
        secondUniqueIdByUser == uniqueIdByUser;
  }
}