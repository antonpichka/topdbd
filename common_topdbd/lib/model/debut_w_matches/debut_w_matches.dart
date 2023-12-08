import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/ban_maps_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/list_ban_maps_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/list_pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/list_pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_survivor_perk_w_matches/pick_survivor_perk_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DebutWMatches extends BaseModel {
  final bool isCompleted;
  final EnumStageNamed enumStageNamed;
  final MatchBalance matchBalance;
  final bool isStageNamedWFirstUniqueIdByUser;
  final ListBanManiacWMatches listBanManiacWMatches;
  final ListPickManiacWMatches listPickManiacWMatches;

  DebutWMatches(this.isCompleted,String strStageNamed, this.matchBalance, this.isStageNamedWFirstUniqueIdByUser, this.listBanManiacWMatches, this.listPickManiacWMatches)
      : enumStageNamed = _getEnumStageNamedFromStrStageNamed(strStageNamed),
        super("$isCompleted");

  static EnumStageNamed _getEnumStageNamedFromStrStageNamed(String strStageNamed) {
    if(strStageNamed == EnumStageNamed.banManiac.name) {
      return EnumStageNamed.banManiac;
    }
    if(strStageNamed == EnumStageNamed.pickManiac.name) {
      return EnumStageNamed.pickManiac;
    }
    if(strStageNamed == EnumStageNamed.bansMapsToPickedManiac.name) {
      return EnumStageNamed.bansMapsToPickedManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickMapsToPickedManiac.name) {
      return EnumStageNamed.systemPickMapsToPickedManiac;
    }
    if(strStageNamed == EnumStageNamed.pickManiacPerkToPickedManiac.name) {
      return EnumStageNamed.pickManiacPerkToPickedManiac;
    }
    if(strStageNamed == EnumStageNamed.pickSurvivorPerkToPickedManiac.name) {
      return EnumStageNamed.pickSurvivorPerkToPickedManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickManiacPerkToPickedManiac.name) {
      return EnumStageNamed.systemPickManiacPerkToPickedManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickSurvivorPerkToPickedManiac.name) {
      return EnumStageNamed.systemPickSurvivorPerkToPickedManiac;
    }
    if(strStageNamed == EnumStageNamed.systemPickManiac.name) {
      return EnumStageNamed.systemPickManiac;
    }
    return EnumStageNamed.isCompleted;
  }

  @override
  DebutWMatches get getClone => DebutWMatches(isCompleted,enumStageNamed.name,matchBalance.getClone,isStageNamedWFirstUniqueIdByUser,listBanManiacWMatches.getClone,listPickManiacWMatches.getClone);

  @override
  String toString() {
    return "DebutWMatches(isCompleted: $isCompleted, "
        "enumStageNamed: ${enumStageNamed.name}, "
        "matchBalance: $matchBalance, "
        "isStageNamedWFirstUniqueIdByUser: $isStageNamedWFirstUniqueIdByUser, "
        "listBanManiacWMatches: ${listBanManiacWMatches.listModel}, "
        "listPickManiacWMatches: ${listPickManiacWMatches.listModel})";
  }

  List<ManiacWMatchBalance> get getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree {
    return matchBalance
        .listManiacWMatchBalance
        .getListManiacWMatchBalanceWhereNotBannedWPickedFromTwoParameterListModel(listBanManiacWMatches.getClone.listModel, listPickManiacWMatches.getClone.listModel);
  }

  List<MapsWMatchBalance> get getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final clone = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listMapsWMatchBalance.getClone;
    for(BanMapsWMatches itemModel in last.listBanMapsWMatches.listModel) {
      for(MapsWMatchBalance itemModelFirst in maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listMapsWMatchBalance.listModel) {
        if(itemModelFirst.name == itemModel.name) {
          clone.deleteFromUniqueIdByModelParameterListModel(itemModelFirst.uniqueId);
          break;
        }
      }
    }
    return clone.listModel;
  }

  List<ManiacPerkWMatchBalance> getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final clone = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listManiacPerkWMatchBalance.getClone;
    for(PickManiacPerkWMatches itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel in last
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser))
    {
      clone.deleteFromUniqueIdByModelParameterListModel(itemPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel.name);
    }
    return clone.listModel;
  }

  List<SurvivorPerkWMatchBalance> getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final clone = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listSurvivorPerkWMatchBalance.getClone;
    for(PickSurvivorPerkWMatches itemPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel in last
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser))
    {
      clone.deleteFromUniqueIdByModelParameterListModel(itemPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel.name);
    }
    return clone.listModel;
  }

  ManiacWMatchBalance get getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo {
    final last = listPickManiacWMatches.listModel.last;
    ManiacWMatchBalance? maniacWMatchBalance;
    for(ManiacWMatchBalance itemModel in matchBalance.listManiacWMatchBalance.listModel) {
      if(itemModel.name == last.name) {
        maniacWMatchBalance = itemModel.getClone;
        break;
      }
    }
    return maniacWMatchBalance!;
  }

  @protected
  PickManiacWMatches get getPickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches {
    final last = listPickManiacWMatches.listModel.last;
    final lastFirst = getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches.last;
    return PickManiacWMatches(
        last.name,
        last.uniqueIdByUser,
        last.creationTime,
        last.listBanMapsWMatches.getClone,
        PickMapsWMatches(lastFirst.name),
        last.listPickManiacPerkWMatches.getClone,
        last.listPickSurvivorPerkWMatches.getClone);
  }

  void insertBanManiacWMatchesFromIndexAndUniqueIdByUserParameterListBanManiacWMatches(int index,String uniqueIdByUser) {
    listBanManiacWMatches
        .insertFromNewModelParameterListModel(BanManiacWMatches(getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name,uniqueIdByUser));
  }

  void insertPickManiacWMatchesFromIndexAndUniqueIdByUserParameterListPickManiacWMatches(int index,String uniqueIdByUser) {
    listPickManiacWMatches
        .insertFromNewModelParameterListModel(PickManiacWMatches(getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree[index].name,uniqueIdByUser,DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertPickManiacWMatchesWhereLastItemManiacWMatchBalanceWNotBannedWPickedParameterOne() {
    final last = getListManiacWMatchBalanceWhereNotBannedAndPickedParametersThree.last;
    listPickManiacWMatches
        .insertFromNewModelParameterListModel(PickManiacWMatches(last.name,"",DateTime.now(),ListBanMapsWMatches(List.empty(growable: true)),PickMapsWMatches(""),ListPickManiacPerkWMatches(List.empty(growable: true)),ListPickSurvivorPerkWMatches(List.empty(growable: true))));
  }

  void insertBanMapsWMatchesWhereLastItemPickManiacWMatchesFromIndexAndUniqueIdByUserParameterOne(int index,String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    int iteration = 0;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.name == last.name) {
        break;
      }
      iteration++;
    }
    listPickManiacWMatches
        .listModel[iteration]
        .listBanMapsWMatches
        .insertFromNewModelParameterListModel(BanMapsWMatches(getListMapsWMatchBalanceWhereNotBannedMapsAndLastItemParameterListPickManiacWMatches[index].name,uniqueIdByUser));
  }

  void insertPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(int index,String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    int iteration = 0;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.name == last.name) {
        break;
      }
      iteration++;
    }
    listPickManiacWMatches
        .listModel[iteration]
        .listPickManiacPerkWMatches
        .insertFromNewModelParameterListModel(PickManiacPerkWMatches(getListManiacPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(uniqueIdByUser)[index].name,uniqueIdByUser));
  }

  void insertPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(int index,String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    int iteration = 0;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.name == last.name) {
        break;
      }
      iteration++;
    }
    listPickManiacWMatches
        .listModel[iteration]
        .listPickSurvivorPerkWMatches
        .insertFromNewModelParameterListModel(PickSurvivorPerkWMatches(getListSurvivorPerkWMatchBalanceWhereNotPickedAndLastItemFromUniqueIdByUserParameterOne(uniqueIdByUser)[index].name,uniqueIdByUser));
  }

  void insertListPickManiacPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(String firstUniqueIdByUser, String secondUniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.name == last.name) {
        for(ManiacPerkWMatchBalance itemModelFirst in maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listManiacPerkWMatchBalance.listModel) {
          itemModel
              .listPickManiacPerkWMatches
              .insertFromNewModelParameterListModel(PickManiacPerkWMatches(itemModelFirst.name,firstUniqueIdByUser));
          itemModel
              .listPickManiacPerkWMatches
              .insertFromNewModelParameterListModel(PickManiacPerkWMatches(itemModelFirst.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void insertListPickSurvivorPerkWMatchesWhereLastItemPickManiacWMatchesFromTwoParameterOne(String firstUniqueIdByUser, String secondUniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    for(PickManiacWMatches itemModel in listPickManiacWMatches.listModel) {
      if(itemModel.name == last.name) {
        for(SurvivorPerkWMatchBalance itemModelFirst in maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo.listSurvivorPerkWMatchBalance.listModel) {
          itemModel
              .listPickSurvivorPerkWMatches
              .insertFromNewModelParameterListModel(PickSurvivorPerkWMatches(itemModelFirst.name,firstUniqueIdByUser));
          itemModel
              .listPickSurvivorPerkWMatches
              .insertFromNewModelParameterListModel(PickSurvivorPerkWMatches(itemModelFirst.name,secondUniqueIdByUser));
        }
        break;
      }
    }
  }

  void updatePickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches() {
    listPickManiacWMatches
        .updateFromNewModelParameterListModel(getPickManiacWMatchesWhereLastItemAndUpdatedPickMapsWMatchesParameterListPickManiacWMatches);
  }

  bool isWhereEqualsSystemPickManiacParameterEnumStageNamed() {
    return enumStageNamed == EnumStageNamed.systemPickManiac;
  }

  bool isWhereEqualsSystemPickMapsToPickedManiacParameterEnumStageNamed() {
    return enumStageNamed == EnumStageNamed.systemPickMapsToPickedManiac;
  }

  bool isWhereEqualsSystemPickManiacPerkToPickedManiacParameterEnumStageNamed() {
    return enumStageNamed == EnumStageNamed.systemPickManiacPerkToPickedManiac;
  }

  bool isWhereEqualsSystemPickSurvivorPerkToPickedManiacParameterEnumStageNamed() {
    return enumStageNamed == EnumStageNamed.systemPickSurvivorPerkToPickedManiac;
  }

  bool isWhereTrueAndEqualsBanManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isWhereTrueAndEqualsPickManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isWhereTrueAndEqualsBanMapsToPickedManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToPickedManiac;
  }

  bool isWhereTrueAndEqualsPickManiacPerkToPickedManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToPickedManiac;
  }

  bool isWhereTrueAndEqualsPickSurvivorPerkToPickedManiacParametersTwo() {
    return isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToPickedManiac;
  }

  bool isWhereFalseAndEqualsBanManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.banManiac;
  }

  bool isWhereFalseAndEqualsPickManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiac;
  }

  bool isWhereFalseAndEqualsBanMapsToPickedManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.bansMapsToPickedManiac;
  }

  bool isWhereFalseAndEqualsPickManiacPerkToPickedManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickManiacPerkToPickedManiac;
  }

  bool isWhereFalseAndEqualsPickSurvivorPerkToPickedManiacParametersTwo() {
    return !isStageNamedWFirstUniqueIdByUser &&
        enumStageNamed == EnumStageNamed.pickSurvivorPerkToPickedManiac;
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
        .listMapsWMatchBalance
        .listModel
        .length;
    return length == (lengthFIRST-1);
  }

  bool isWhereLengthListPickManiacPerkWMatchesEqualsNecessaryLengthPickManiacPerkFromOneParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final length = last
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final necessaryLengthPickedManiacPerk = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .necessaryLengthPickedManiacPerk;
    return length == necessaryLengthPickedManiacPerk;
  }

  bool isWhereLengthListPickManiacPerkWMatchesNotEqualsNecessaryLengthPickManiacPerkFromOneParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final length = last
        .listPickManiacPerkWMatches
        .getListPickManiacPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final necessaryLengthPickedManiacPerk = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .necessaryLengthPickedManiacPerk;
    return length != necessaryLengthPickedManiacPerk;
  }

  bool isWhereLengthListPickSurvivorPerkWMatchesEqualsNecessaryLengthPickSurvivorPerkFromOneParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final length = last
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final necessaryLengthPickedSurvivorPerk = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .necessaryLengthPickedSurvivorPerk;
    return length == necessaryLengthPickedSurvivorPerk;
  }

  bool isWhereLengthListPickSurvivorPerkWMatchesNotEqualsNecessaryLengthPickSurvivorPerkFromUniqueIdByUserParameterOne(String uniqueIdByUser) {
    final last = listPickManiacWMatches.listModel.last;
    final maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo = getManiacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo;
    final length = last
        .listPickSurvivorPerkWMatches
        .getListPickSurvivorPerkWMatchesFromUniqueIdByUserParameterListModel(uniqueIdByUser)
        .length;
    final necessaryLengthPickedSurvivorPerk = maniacWMatchBalanceWhereLastItemPickManiacWMatchesParametersTwo
        .necessaryLengthPickedSurvivorPerk;
    return length != necessaryLengthPickedSurvivorPerk;
  }
}