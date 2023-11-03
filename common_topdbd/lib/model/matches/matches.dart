import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/enum_round_status.dart';
import 'package:common_topdbd/model/round_w_matches/round_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
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

  void insertBanManiacWMatchesFromNameBannedManiacParametersDebutWMatchesAndFirstUniqueIdByUser(String nameBannedManiac) {
    debutWMatches
        .insertBanManiacWMatchesFromNameBannedManiacAndUniqueIdByUserParameterListBanManiacWMatches(nameBannedManiac,firstUniqueIdByUser);
  }

  void insertBanManiacWMatchesFromNameBannedManiacParametersDebutWMatchesAndSecondUniqueIdByUser(String nameBannedManiac) {
    debutWMatches
        .insertBanManiacWMatchesFromNameBannedManiacAndUniqueIdByUserParameterListBanManiacWMatches(nameBannedManiac,secondUniqueIdByUser);
  }

  void insertPickManiacWMatchesFromNamePickedManiacParametersDebutWMatchesAndFirstUniqueIdByUser(String namePickedManiac) {
    debutWMatches
        .insertPickManiacWMatchesFromNamePickedManiacAndUniqueIdByUserParameterListPickManiacWMatches(namePickedManiac,firstUniqueIdByUser);
  }

  void insertPickManiacWMatchesFromNamePickedManiacParametersDebutWMatchesAndSecondUniqueIdByUser(String namePickedManiac) {
    debutWMatches
        .insertPickManiacWMatchesFromNamePickedManiacAndUniqueIdByUserParameterListPickManiacWMatches(namePickedManiac,secondUniqueIdByUser);
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromMapsParametersTwo(Maps maps) {
    debutWMatches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromMapsAndUniqueIdByUserParameterOne(maps,firstUniqueIdByUser);
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromMapsParametersTwoFIRST(Maps maps) {
    debutWMatches
        .insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromMapsAndUniqueIdByUserParameterOne(maps,secondUniqueIdByUser);
  }

  void insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesParametersThree() {
    debutWMatches
        .insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(firstUniqueIdByUser,secondUniqueIdByUser);
  }

  void insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromManiacPerkParametersTwo(ManiacPerk maniacPerk) {
    debutWMatches
        .insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(maniacPerk,firstUniqueIdByUser);
  }

  void insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromManiacPerkParametersTwoFIRST(ManiacPerk maniacPerk) {
    debutWMatches
        .insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(maniacPerk,secondUniqueIdByUser);
  }

  void insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromSurvivorPerkParametersTwo(SurvivorPerk survivorPerk) {
    debutWMatches
        .insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(survivorPerk,firstUniqueIdByUser);
  }

  void insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromSurvivorPerkParametersTwoFIRST(SurvivorPerk survivorPerk) {
    debutWMatches
        .insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(survivorPerk,secondUniqueIdByUser);
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