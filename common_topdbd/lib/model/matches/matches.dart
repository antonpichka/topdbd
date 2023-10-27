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

  void insertListRoundWhereMatchesParameterListRoundWhereMatches() {
    listPickManiacWMatches.pickManiacWMatchesWhereOrderByAscParameterCreationTimeIterator();
    int round = 1;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      final isRoleManiacUniqueIdByUserWhereFirst =
      pickManiacWhereMatches.uniqueIdByUser == firstUniqueIdByUser
          ? true
          : false;
      listRoundWMatches.insertFromRoundWMatchesParameterListModel(RoundWMatches(
          round,
          pickManiacWhereMatches.getClone,
          EnumRoundStatus.firstManiac.name,
          isRoleManiacUniqueIdByUserWhereFirst,
          false,
          false,
          0,
          0));
      round++;
    }
  }

  void insertListPickManiacPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(pickManiacWhereMatches.namePickedManiac == lastItemPickManiacWhereMatches.namePickedManiac) {
        for(ManiacPerk maniacPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listManiacPerk.listModel) {
          pickManiacWhereMatches
              .listPickManiacPerkWMatches
              .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,firstUniqueIdByUser));
          pickManiacWhereMatches
              .listPickManiacPerkWMatches
              .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void insertListPickSurvivorPerkWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(pickManiacWhereMatches.namePickedManiac == lastItemPickManiacWhereMatches.namePickedManiac) {
        for(SurvivorPerk survivorPerk in maniacWhereMatchBalanceForLastItemPickManiacWhereMatches.listSurvivorPerk.listModel) {
          pickManiacWhereMatches
              .listPickSurvivorPerkWMatches
              .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,firstUniqueIdByUser));
          pickManiacWhereMatches
              .listPickSurvivorPerkWMatches
              .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void updatePickMapsWhereMatchesParameterListPickManiacWhereMatches() {
    listPickManiacWMatches
        .updateFromPickManiacWMatchesParameterListModel(getLastPickManiacWMatchesWhereUpdatedPickMapsWMatchesParameterListPickManiacWMatches);
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWMatches
        .insertFromBanManiacWMatchesParameterListModel(BanManiacWMatches(nameManiac,firstUniqueIdByUser));
  }

  void insertBanManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListBanManiacWhereMatches(String nameManiac) {
    listBanManiacWMatches
        .insertFromBanManiacWMatchesParameterListModel(BanManiacWMatches(nameManiac,secondUniqueIdByUser));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(nameManiac,firstUniqueIdByUser,DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromNameManiacParameterListPickManiacWhereMatches(String nameManiac) {
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(nameManiac,secondUniqueIdByUser,DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertLastPickManiacWhereMatchesParameterListPickManiacWhereMatches() {
    final notBannedAndPickedListManiacWhereMatchBalance = getListManiacWMatchBalanceWhereNotBannedWPickedParameterDebutWMatches;
    final lastManiacWhereMatchBalance = notBannedAndPickedListManiacWhereMatchBalance.listModel.last;
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(lastManiacWhereMatchBalance.maniac.name,"",DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromMapsParameterListPickManiacWhereMatches(Maps maps) {
    insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(maps,firstUniqueIdByUser);
  }

  void insertBanMapsWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromMapsParameterListPickManiacWhereMatches(Maps maps) {
    insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(maps,secondUniqueIdByUser);
  }

  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk) {
    insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk,firstUniqueIdByUser);
  }

  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk) {
    insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(maniacPerk,secondUniqueIdByUser);
  }

  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereFirstFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk) {
    insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk,firstUniqueIdByUser);
  }

  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesForUniqueIdByUserWhereSecondFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk) {
    insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(survivorPerk,secondUniqueIdByUser);
  }

  @protected
  void insertBanMapsWhereMatchesToPickManiacWhereMatchesFromMapsParameterListPickManiacWhereMatches(Maps maps,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(lastItemPickManiacWhereMatches.namePickedManiac == pickManiacWhereMatches.namePickedManiac) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listBanMapsWMatches
        .insertFromBanMapsWMatchesParameterListModel(BanMapsWMatches(maps.name,uniqueIdByUser));
  }

  @protected
  void insertManiacPerkWhereMatchesToPickManiacWhereMatchesFromManiacPerkParameterListPickManiacWhereMatches(ManiacPerk maniacPerk,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(lastItemPickManiacWhereMatches.namePickedManiac == pickManiacWhereMatches.namePickedManiac) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickManiacPerkWMatches
        .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,uniqueIdByUser));
  }

  @protected
  void insertSurvivorPerkWhereMatchesToPickManiacWhereMatchesFromSurvivorPerkParameterListPickManiacWhereMatches(SurvivorPerk survivorPerk,String uniqueIdByUser) {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches pickManiacWhereMatches in listPickManiacWMatches.listModel) {
      if(lastItemPickManiacWhereMatches.namePickedManiac == pickManiacWhereMatches.namePickedManiac) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickSurvivorPerkWMatches
        .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,uniqueIdByUser));
  }

  bool isTrueAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isTrueAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickMapsToManiac;
  }

  bool isTrueAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiacPerkToManiac;
  }

  bool isTrueAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac;
  }

  bool isTrueAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isTrueAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isTrueAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToManiac;
  }

  bool isTrueAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToManiac;
  }

  bool isTrueAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToManiac;
  }

  bool isFalseAndSystemPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isFalseAndSystemPickMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickMapsToManiac;
  }

  bool isFalseAndSystemPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiacPerkToManiac;
  }

  bool isFalseAndSystemPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac;
  }

  bool isFalseAndBanManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isFalseAndPickManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isFalseAndBansMapsToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToManiac;
  }

  bool isFalseAndPickManiacPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToManiac;
  }

  bool isFalseAndPickSurvivorPerkToManiacParametersIsStageBanOrPickForUniqueIdByUserWhereFirstAndEnumBanOrPickNamed() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToManiac;
  }

  bool isDoneFirstStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() {
    return listBanManiacWMatches.listModel.length
        == matchBalance.getNumberOfBannedManiacsInTheFirstStageWhereEvenAndInterestFormula;
  }

  bool isDoneSecondStageBanManiacWhereMatchesParametersListBanManiacWhereMatchesAndMatchBalance() {
    return listBanManiacWMatches.listModel.length
        == matchBalance.getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds;
  }

  bool isDoneFirstStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    return listPickManiacWMatches.listModel.length
        == (matchBalance.numberOfRounds - 1);
  }

  bool isDoneSecondStagePickManiacWhereMatchesParametersListPickManiacWhereMatchesAndMatchBalance() {
    return listPickManiacWMatches.listModel.length
        == matchBalance.numberOfRounds;
  }

  bool isBanMapsEqualsLengthTakeOneMapsByMatchBalanceParametersListPickManiacWhereMatchesAndMatchBalance() {
    final lastItemPickManiacWhereMatches = getLastItemPickManiacWhereMatchesParameterListPickManiacWhereMatches;
    final maniacWhereMatchBalanceForLastItemPickManiacWhereMatches = getManiacWhereMatchBalanceForLastItemPickManiacWhereMatchesParameterMatchBalance;
    final lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches = lastItemPickManiacWhereMatches
        .listBanMapsWMatches
        .listModel
        .length;
    final lengthByListMapsByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches = maniacWhereMatchBalanceForLastItemPickManiacWhereMatches
        .listMaps
        .listModel
        .length;
    return lengthByListBanMapsWhereMatchesByLastItemPickManiacWhereMatches
       == (lengthByListMapsByManiacWhereMatchBalanceForLastItemPickManiacWhereMatches-1);
  }

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

  bool isEmptyByListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches() {
    return getListUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .listModel
        .isEmpty;
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

  bool isUniqueIdByUserWhereFirstManiacAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondSurvivorAndWaitUniqueIdByUserWhereFirstManiacParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isWhereTrueAndFalseAndNotEqualsNextRoundParametersThree();
  }

  bool isUniqueIdByUserWhereFirstManiacAndWaitUniqueIdByUserWhereSecondSurvivorOrUniqueIdByUserWhereSecondSurvivorAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isWhereTrueAndTrueAndFalseAndNotEqualsNextRoundParametersFour();
  }

  bool isUniqueIdByUserWhereFirstManiacAndStopTimerOrUniqueIdByUserWhereSecondSurvivorAndStopTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isWhereTrueAndTrueAndTrueAndNotEqualsNextRoundParametersFour();
  }

  bool isUniqueIdByUserWhereFirstManiacAndNextRoundOrUniqueIdByUserWhereSecondSurvivorAndNextRoundParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isWhereTrueAndEqualsNextRoundParametersIsRoleManiacWFirstUniqueIdByUserAndEnumRoundStatus();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndWaitUniqueIdByUserWhereSecondManiacOrUniqueIdByUserWhereSecondManiacAndUniqueIdByUserWhereSecondTurnsStartTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isWhereFalseAndFalseAndNotEqualsNextRoundParametersThree();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndUniqueIdByUserWhereFirstTurnsStartTimerOrUniqueIdByUserWhereSecondManiacAndWaitUniqueIdByUserWhereFirstSurvivorParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isWhereFalseAndFalseAndTrueAndNotEqualsNextRoundParametersFour();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndStopTimerOrUniqueIdByUserWhereSecondManiacAndStopTimerParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndTrueAndTrueAndNotEqualsNextRoundParametersFour();
  }

  bool isUniqueIdByUserWhereFirstSurvivorAndNextRoundOrUniqueIdByUserWhereSecondManiacAndNextRoundParameterListRoundWhereMatches() {
    return getFirstItemUnfinishedRoundWhereMatchesParameterListRoundWhereMatches
        .isFalseAndEqualsNextRoundParametersIsRoleManiacWFirstUniqueIdByUserAndEnumRoundStatus();
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