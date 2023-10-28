import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/ban_maps_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/list_ban_maps_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/list_pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/list_pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk/survivor_perk.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DebutWMatches extends BaseModel {
  final EnumStageNamed enumStageNamed;
  final MatchBalance matchBalance;
  final bool isStageNamedWFirstUniqueIdByUser;
  final ListBanManiacWMatches listBanManiacWMatches;
  final ListPickManiacWMatches listPickManiacWMatches;

  DebutWMatches(super.strStageNamed, this.matchBalance, this.isStageNamedWFirstUniqueIdByUser, this.listBanManiacWMatches, this.listPickManiacWMatches)
      : enumStageNamed = _getEnumStageNamedFromStrStageNamed(strStageNamed);

  static EnumStageNamed _getEnumStageNamedFromStrStageNamed(String strStageNamed) {
    if(strStageNamed == EnumStageNamed.systemPickManiac.name) {
      return EnumStageNamed.systemPickManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickMapsToManiac.name) {
      return EnumStageNamed.systemPickMapsToManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickManiacPerkToManiac.name) {
      return EnumStageNamed.systemPickManiacPerkToManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac.name) {
      return EnumStageNamed.systemPickSurvivorPerkToManiac;
    }
    if(strStageNamed == EnumStageNamed.banManiac.name) {
      return EnumStageNamed.banManiac;
    }
    if(strStageNamed == EnumStageNamed.pickManiac.name) {
      return EnumStageNamed.pickManiac;
    }
    if(strStageNamed == EnumStageNamed.bansMapsToManiac.name) {
      return EnumStageNamed.bansMapsToManiac;
    }
    if(strStageNamed == EnumStageNamed.pickManiacPerkToManiac.name) {
      return EnumStageNamed.pickManiacPerkToManiac;
    }
    if(strStageNamed == EnumStageNamed.pickSurvivorPerkToManiac.name) {
      return EnumStageNamed.pickSurvivorPerkToManiac;
    }
    return EnumStageNamed.ready;
  }

  @override
  DebutWMatches get getClone => DebutWMatches(enumStageNamed.name,matchBalance.getClone,isStageNamedWFirstUniqueIdByUser,listBanManiacWMatches.getClone,listPickManiacWMatches.getClone);

  @override
  String toString() {
    return "DebutWMatches(enumStageNamed: $enumStageNamed, "
        "matchBalance: $matchBalance, "
        "isStageNamedWFirstUniqueIdByUser: $isStageNamedWFirstUniqueIdByUser, "
        "ListBanManiacWMatches: ${listBanManiacWMatches.listModel}, "
        "ListPickManiacWMatches: ${listPickManiacWMatches.listModel})";
  }

  List<ManiacWMatchBalance> get getListManiacWMatchBalanceWhereNotBannedWPickedParametersThree {
    return matchBalance
        .listManiacWMatchBalance
        .getListManiacWMatchBalanceWhereNotBannedWPickedFromTwoParameterListModel(listBanManiacWMatches.getClone.listModel, listPickManiacWMatches.getClone.listModel);
  }

  List<Maps> get getListMapsWhereNotBannedMapsParameterListPickManiacWMatches {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final clone = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listMaps.getClone;
    for(BanMapsWMatches itemModel in last.listBanMapsWMatches.listModel) {
      for(Maps itemModelFirst in maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listMaps.listModel) {
        if(itemModel.nameBannedMaps == itemModelFirst.name) {
          clone.deleteFromUniqueIdByMapsParameterListModel(itemModelFirst.uniqueId);
          break;
        }
      }
    }
    return clone.listModel;
  }

  List<ManiacPerk> getListManiacPerkWhereLastPickManiacWMatchesWNotPickedFromUniqueIdByUserParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final clone = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listManiacPerk.getClone;
    for(PickManiacPerkWMatches itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel in last
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser))
    {
      clone.deleteFromUniqueIdByManiacPerkParameterListModel(itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel.uniqueId);
    }
    return clone.listModel;
  }

  List<SurvivorPerk> getListSurvivorPerkWhereLastPickManiacWMatchesWNotPickedFromUniqueIdByUserParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final clone = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listSurvivorPerk.getClone;
    for(PickSurvivorPerkWMatches itemPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel in last
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser))
    {
      clone.deleteFromUniqueIdBySurvivorPerkParameterListModel(itemPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel.uniqueId);
    }
    return clone.listModel;
  }

  ManiacWMatchBalance get getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo {
    final last = listPickManiacWMatches.listModel.last;
    ManiacWMatchBalance? maniacWMatchBalance;
    for(ManiacWMatchBalance itemModel in matchBalance.listManiacWMatchBalance.listModel) {
      if(itemModel.maniac.name == last.namePickedManiac) {
        maniacWMatchBalance = itemModel.getClone;
        break;
      }
    }
    return maniacWMatchBalance!;
  }

  PickManiacWMatches get getPickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches {
    final last = listPickManiacWMatches.listModel.last;
    final lastFirst = getListMapsWhereNotBannedMapsParameterListPickManiacWMatches.last;
    return PickManiacWMatches(
        last.namePickedManiac,
        last.uniqueIdByUser,
        last.creationTime,
        last.listBanMapsWMatches.getClone,
        PickMapsWMatches(lastFirst.name),
        last.listPickManiacPerkWMatches.getClone,
        last.listPickSurvivorPerkWMatches.getClone);
  }

  void insertBanManiacWMatchesFromNameBannedManiacAndUniqueIdByUserParameterListBanManiacWMatches(String nameBannedManiac,String uniqueIdByUser) {
    listBanManiacWMatches
        .insertFromBanManiacWMatchesParameterListModel(BanManiacWMatches(nameBannedManiac,uniqueIdByUser));
  }

  void insertPickManiacWMatchesFromNamePickedManiacAndUniqueIdByUserParameterListPickManiacWMatches(String namePickedManiac,String uniqueIdByUser) {
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(namePickedManiac,uniqueIdByUser,DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertPickManiacWMatchesWhereLastItemManiacWMatchBalanceWNotBannedWPickedParameterOne() {
    final last = getListManiacWMatchBalanceWhereNotBannedWPickedParametersThree.last;
    listPickManiacWMatches
        .insertFromPickManiacWMatchesParameterListModel(PickManiacWMatches(last.maniac.name,"",DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromMapsAndUniqueIdByUserParameterOne(Maps maps,String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    int iteration = 0;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.namePickedManiac == last.namePickedManiac) {
        break;
      }
      iteration++;
    }
    listPickManiacWMatches
        .listModel[iteration]
        .listBanMapsWMatches
        .insertFromBanMapsWMatchesParameterListModel(BanMapsWMatches(maps.name,uniqueIdByUser));
  }

  void insertManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(ManiacPerk maniacPerk,String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    int iteration = 0;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.namePickedManiac == last.namePickedManiac) {
        break;
      }
      iteration++;
    }
    listPickManiacWMatches
        .listModel[iteration]
        .listPickManiacPerkWMatches
        .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(maniacPerk.perk.name,uniqueIdByUser));
  }

  void insertSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(SurvivorPerk survivorPerk,String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    int iterationForListPickManiacWhereMatches = 0;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.namePickedManiac == last.namePickedManiac) {
        break;
      }
      iterationForListPickManiacWhereMatches++;
    }
    listPickManiacWMatches
        .listModel[iterationForListPickManiacWhereMatches]
        .listPickSurvivorPerkWMatches
        .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(survivorPerk.perk.name,uniqueIdByUser));
  }

  void insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(String firstUniqueIdByUser, String secondUniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.namePickedManiac == last.namePickedManiac) {
        for(ManiacPerk itemModelFirst in maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listManiacPerk.listModel) {
          itemModel
              .listPickManiacPerkWMatches
              .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(itemModelFirst.perk.name,firstUniqueIdByUser));
          itemModel
              .listPickManiacPerkWMatches
              .insertFromPickManiacPerkWMatchesParameterListModel(PickManiacPerkWMatches(itemModelFirst.perk.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(String firstUniqueIdByUser, String secondUniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.namePickedManiac == last.namePickedManiac) {
        for(SurvivorPerk itemModelFirst in maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listSurvivorPerk.listModel) {
          itemModel
              .listPickSurvivorPerkWMatches
              .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(itemModelFirst.perk.name,firstUniqueIdByUser));
          itemModel
              .listPickSurvivorPerkWMatches
              .insertFromPickSurvivorPerkWMatchesParameterListModel(PickSurvivorPerkWMatches(itemModelFirst.perk.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void updatePickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches() {
    listPickManiacWMatches
        .updateFromPickManiacWMatchesParameterListModel(getPickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches);
  }

  bool isWhereTrueAndEqualsSystemPickManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isWhereTrueAndEqualsSystemPickMapsToManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickMapsToManiac;
  }

  bool isWhereTrueAndEqualsSystemPickManiacPerkToManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiacPerkToManiac;
  }

  bool isWhereTrueAndEqualsSystemPickSurvivorPerkToManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac;
  }

  bool isWhereTrueAndEqualsBanManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isWhereTrueAndEqualsPickManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isWhereTrueAndEqualsBanMapsToManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToManiac;
  }

  bool isWhereTrueAndEqualsPickManiacPerkToManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToManiac;
  }

  bool isWhereTrueAndEqualsPickSurvivorPerkToManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToManiac;
  }

  bool isWhereFalseAndEqualsSystemPickManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isWhereFalseAndEqualsSystemPickMapsToManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickMapsToManiac;
  }

  bool isWhereFalseAndEqualsSystemPickManiacPerkToManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickManiacPerkToManiac;
  }

  bool isWhereFalseAndEqualsSystemPickSurvivorPerkToManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToManiac;
  }

  bool isWhereFalseAndEqualsBanManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isWhereFalseAndEqualsPickManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isWhereFalseAndEqualsBanMapsToManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToManiac;
  }

  bool isWhereFalseAndEqualsPickManiacPerkToManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToManiac;
  }

  bool isWhereFalseAndEqualsPickSurvivorPerkToManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToManiac;
  }

  bool isWhereDoneFirstStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance() {
    return listBanManiacWMatches.listModel.length
        == matchBalance.getNumberOfBannedManiacsInTheFirstStageWhereEvenAndInterestFormula;
  }

  bool isWhereDoneSecondStageBanManiacWMatchesParametersListBanManiacWMatchesAndMatchBalance() {
    return listBanManiacWMatches.listModel.length
        == matchBalance.getNumberOfBannedManiacsParametersListManiacWMatchBalanceAndNumberOfRounds;
  }

  bool isWhereDoneFirstStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() {
    return listPickManiacWMatches.listModel.length
        == (matchBalance.numberOfRounds - 1);
  }

  bool isWhereDoneSecondStagePickManiacWMatchesParametersListPickManiacWMatchesAndMatchBalance() {
    return listPickManiacWMatches.listModel.length
        == matchBalance.numberOfRounds;
  }

  bool isWhereNumberOfBannedMapsEqualsNumberOfMapsWithoutOneAndLastItemPickManiacWMatchesParameterOne() {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final length = last
        .listBanMapsWMatches
        .listModel
        .length;
    final lengthFIRST = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .listMaps
        .listModel
        .length;
    return length
        == (lengthFIRST-1);
  }
}