import 'package:common_topdbd/model/ban_maniac_w_matches/list_ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/ban_maps_w_matches/ban_maps_w_matches.dart';
import 'package:common_topdbd/model/debut_w_matches/enum_stage_named.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps/maps.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/model/pick_maniac_perk_w_matches/pick_maniac_perk_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/list_pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/pick_maps_w_matches/pick_maps_w_matches.dart';
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

  PickManiacWMatches get getLastPickManiacWMatchesWhereUpdatedPickMapsWMatchesParameterListPickManiacWMatches {
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
}