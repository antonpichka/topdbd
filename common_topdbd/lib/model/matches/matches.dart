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

  Matches getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanManiacFromThreeParametersSeven(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUniqueIdByUserTurnsBanManiacFromIndexParametersThree(index),
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

  Matches getMatchesWhereNewAndFirstUniqueIdByUserTurnsPickManiacFromThreeParametersSeven(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUniqueIdByUserTurnsPickManiacFromIndexParametersThree(index),
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

  Matches getMatchesWhereNewAndFirstUniqueIdByUserTurnsBanMapsToPickedManiacFromThreeParametersSeven(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUniqueIdByUserTurnsBanMapsToPickedManiacFromIndexParametersThree(index),
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

  Matches getMatchesWhereNewAndSystemPickMapsToPickedManiacFromOneParametersSeven(EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereSystemPickMapsToPickedManiacParametersTwo,
        firstUniqueIdByUser,
        secondUniqueIdByUser,
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

  Matches getMatchesWhereNewAndFirstUIBUTurnsPickManiacPerkToPickedManiacFromThreeParametersSeven(int index,bool isStageNamedWFirstUniqueIdByUserByDebutWMatches,EnumStageNamed enumStageNamedByDebutWMatches) {
    return Matches(
        uniqueId,
        creationTime,
        getStringWhereFirstUIBUTurnsPickManiacPerkToPickedManiacFromIndexParametersThree(index),
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

  @protected
  String getStringWhereFirstUniqueIdByUserTurnsBanManiacFromIndexParametersThree(int index) {
    return textLogAction.isNotEmpty
        ? "$textLogAction\nUser '$firstUniqueIdByUser': banned maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'"
        : "User '$firstUniqueIdByUser': banned maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'";
  }

  @protected
  String getStringWhereFirstUniqueIdByUserTurnsPickManiacFromIndexParametersThree(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser': picked maniac '${debutWMatches.getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name}'";
  }

  @protected
  String getStringWhereFirstUniqueIdByUserTurnsBanMapsToPickedManiacFromIndexParametersThree(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser': banned maps '${debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches[index].name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String get getStringWhereSystemPickMapsToPickedManiacParametersTwo {
    return "$textLogAction\nSystem: picked maps '${debutWMatches.getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches.last.name}' to picked maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
  }

  @protected
  String getStringWhereFirstUIBUTurnsPickManiacPerkToPickedManiacFromIndexParametersThree(int index) {
    return "$textLogAction\nUser '$firstUniqueIdByUser': picked maniac perk '${getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemPickManiacWMatchesParametersTwo[index].name}' to maniac '${debutWMatches.listPickManiacWMatches.listModel.last.name}'";
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

  void insertBanManiacWMatchesFromNameParametersDebutWMatchesAndFirstUniqueIdByUser(int index) {
    debutWMatches
        .insertBanManiacWMatchesFromIndexAndUniqueIdByUserParameterListBanManiacWMatches(index,firstUniqueIdByUser);
  }

  void insertBanManiacWMatchesFromNameParametersDebutWMatchesAndSecondUniqueIdByUser(int index) {
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

  void insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
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