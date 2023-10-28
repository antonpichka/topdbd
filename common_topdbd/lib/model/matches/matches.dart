import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/ban_maps_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/list_ban_maps_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/debut_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/endgame_w_matches/endgame_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps/list_maps.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/middlegame_w_matches/middlegame_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/list_pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/list_pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/enum_round_status.dart';
import 'package:common_topdbd/model/round_w_matches/list_round_w_matches.dart';
import 'package:common_topdbd/model/round_w_matches/round_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk/list_survivor_perk.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/enum_win_number_user.dart';
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
        .pickManiacWMatchesWhereOrderByAscParameterCreationTimeIterator();
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

  // END
  bool isNotEmptyByListManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .listManiacPerk
        .listModel
        .isNotEmpty;
  }

  bool isNotEmptyByListSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .listSurvivorPerk
        .listModel
        .isNotEmpty;
  }

  bool isLengthPickMPNotEqualsLengthListMPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isWhereNotEqualsParametersLengthPickManiacPerkAndListManiacPerk();
  }

  bool isLengthPickSPNotEqualsLengthListSPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isWhereNotEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerk();
  }

  bool isLengthPickSPEqualsLengthListSPAndIsNotEmptyListSPByLastManiacWhereMatchBalanceParameterMatchBalance() {
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    return maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.isWhereNotEmptyAndEqualsParametersLengthPickSurvivorPerkAndListSurvivorPerk();
  }

  bool isPickManiacPerkForUniqueIdByUserWhereFirstEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereSecondEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickManiacPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereFirstEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereSecondEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereFirstNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(firstUniqueIdByUser);
  }

  bool isPickSurvivorPerkForUniqueIdByUserWhereSecondNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    return isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(secondUniqueIdByUser);
  }

  bool isLengthByListFinishedRoundWhereMatchesMoreThanLengthByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() {
    final listFinishedRoundWhereMatches = getListFinishedRoundWhereMatchesParameterListRoundWhereMatches;
    final listUnfinishedRoundWhereMatches = getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches;
    return listFinishedRoundWhereMatches.listModel.length > listUnfinishedRoundWhereMatches.listModel.length;
  }

  bool isListFinishedRoundWhereMatchesWereWonByOneUserParameterListRoundWhereMatches() {
    final listFinishedRoundWhereMatches = getListFinishedRoundWhereMatchesParameterListRoundWhereMatches;
    int iterationWinRoundForUniqueIdByUserWhereFirst = 0;
    int iterationWinRoundForUniqueIdByUserWhereSecond = 0;
    for(RoundWMatches roundWhereMatches in listFinishedRoundWhereMatches.listModel)  {
      if(roundWhereMatches.isWhereWinRoundWFirstUniqueIdByUserParametersTwo()) {
        iterationWinRoundForUniqueIdByUserWhereFirst++;
        continue;
      }
      iterationWinRoundForUniqueIdByUserWhereSecond++;
    }
    if(iterationWinRoundForUniqueIdByUserWhereFirst == listFinishedRoundWhereMatches.listModel.length) {
      return true;
    }
    if(iterationWinRoundForUniqueIdByUserWhereSecond == listFinishedRoundWhereMatches.listModel.length) {
      return true;
    }
    return false;
  }

  bool isWinMatchesForUniqueIdByUserWhereFirstParameterListRoundWhereMatches() {
    final listTwoItemIterationWinRoundForUniqueIdByUser = getListTwoItemIterationWinRoundForUniqueIdByUserParameterListRoundWhereMatches;
    final iterationWinRoundForUniqueIdByUserWhereFirst = listTwoItemIterationWinRoundForUniqueIdByUser[0];
    final iterationWinRoundForUniqueIdByUserWhereSecond = listTwoItemIterationWinRoundForUniqueIdByUser[1];
    if(iterationWinRoundForUniqueIdByUserWhereFirst > iterationWinRoundForUniqueIdByUserWhereSecond) {
      return true;
    }
    return false;
  }

  @protected
  bool isPickManiacPerkEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickManiacPerk;
    return lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches
        == lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }

  @protected
  bool isPickManiacPerkNotEqualsLengthPickManiacPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickManiacPerk;
    return lengthByListPickManiacPerkWhereMatchesFromUniqueIdByUserByListPickManiacPerkWhereMatchesByLastItemPickManiacWhereMatches
        != lengthPickManiacPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }

  @protected
  bool isPickSurvivorPerkEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickSurvivorPerk;
    return lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches
        == lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }

  @protected
  bool isPickSurvivorPerkNotEqualsLengthPickSurvivorPerkByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance(String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .lengthPickSurvivorPerk;
    return lengthByListPickSurvivorPerkWhereMatchesFromUniqueIdByUserByListPickSurvivorPerkWhereMatchesByLastItemPickManiacWhereMatches
        != lengthPickSurvivorPerkByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches;
  }
}