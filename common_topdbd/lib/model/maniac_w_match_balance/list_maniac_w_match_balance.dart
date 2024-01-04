import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/maps_w_match_balance.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/survivor_perk_w_match_balance.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiacWMatchBalance<T extends ManiacWMatchBalance> extends BaseListModel<T> {
  const ListManiacWMatchBalance(super.listModel);

  @override
  ListManiacWMatchBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListManiacWMatchBalance<T>(newListModel);
  }

  List<T> getListManiacWMatchBalanceWhereNotBannedWPickedFromTwoParameterListModel(List<BanManiacWMatches> listBanManiacWMatches, List<PickManiacWMatches> listPickManiacWMatches) {
    final clone = getClone;
    for(T itemModel in listModel) {
      for(BanManiacWMatches itemBanManiacWMatches in listBanManiacWMatches) {
        if(itemBanManiacWMatches.name == itemModel.name) {
          clone.deleteFromUniqueIdByModelParameterListModel(itemModel.uniqueId);
          break;
        }
      }
      for(PickManiacWMatches itemPickManiacWMatches in listPickManiacWMatches) {
        if(itemPickManiacWMatches.name == itemModel.name) {
          clone.deleteFromUniqueIdByModelParameterListModel(itemModel.uniqueId);
          break;
        }
      }
    }
    return clone.listModel;
  }

  void insertListFromListStrings(ListStrings listStrings) {
    for(Strings itemModel in listStrings.listModel) {
      super.insertFromNewModelParameterListModel(ManiacWMatchBalance(itemModel.uniqueId,0,0,ListMapsWMatchBalance(List.empty(growable: true)),ListManiacPerkWMatchBalance(List.empty(growable: true)),ListSurvivorPerkWMatchBalance(List.empty(growable: true))) as T);
    }
  }

  void updateWhereNecessaryLengthPickedManiacPerkFromTwoParameterListModel(String nameByManiacWMatchBalance,int necessaryLengthPickedManiacPerkByManiacWMatchBalance) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      final maniacWMatchBalanceFromNewNecessaryLengthPickedManiacPerkParametersFive = itemModel
          .getManiacWMatchBalanceFromNewNecessaryLengthPickedManiacPerkParametersFive(necessaryLengthPickedManiacPerkByManiacWMatchBalance);
      super.updateFromNewModelParameterListModel(maniacWMatchBalanceFromNewNecessaryLengthPickedManiacPerkParametersFive as T);
      break;
    }
  }

  void updateWhereNecessaryLengthPickedSurvivorPerkFromTwoParameterListModel(String nameByManiacWMatchBalance,int necessaryLengthPickedSurvivorPerkByManiacWMatchBalance) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      final maniacWMatchBalanceFromNewNecessaryLengthPickedSurvivorPerkParametersFive = itemModel
          .getManiacWMatchBalanceFromNewNecessaryLengthPickedSurvivorPerkParametersFive(necessaryLengthPickedSurvivorPerkByManiacWMatchBalance);
      super.updateFromNewModelParameterListModel(maniacWMatchBalanceFromNewNecessaryLengthPickedSurvivorPerkParametersFive as T);
      break;
    }
  }

  void insertMapsWMatchBalanceFromNameByManiacWMatchBalanceAndListStringsParameterListModel(String nameByManiacWMatchBalance,ListStrings listStrings) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      itemModel
          .listMapsWMatchBalance
          .insertListFromListStrings(listStrings);
      break;
    }
  }

  void insertManiacPerkWMatchBalanceFromNameByManiacWMatchBalanceAndListStringsParameterListModel(String nameByManiacWMatchBalance,ListStrings listStrings) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      itemModel
          .listManiacPerkWMatchBalance
          .insertListFromListStrings(listStrings);
      break;
    }
  }

  void insertSurvivorPerkWMatchBalanceFromNameByManiacWMatchBalanceAndListStringsParameterListModel(String nameByManiacWMatchBalance,ListStrings listStrings) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      itemModel
          .listSurvivorPerkWMatchBalance
          .insertListFromListStrings(listStrings);
      break;
    }
  }

  void deleteMapsWMatchBalanceFromNameByManiacWMatchBalanceAndMapsWMatchBalanceParameterListModel(String nameByManiacWMatchBalance,MapsWMatchBalance mapsWMatchBalance) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      itemModel
          .listMapsWMatchBalance
          .deleteFromUniqueIdByModelParameterListModel(mapsWMatchBalance.uniqueId);
      break;
    }
  }

  void deleteManiacPerkWMatchBalanceFromNameByManiacWMatchBalanceAndManiacPerkWMatchBalanceParameterListModel(String nameByManiacWMatchBalance,ManiacPerkWMatchBalance maniacPerkWMatchBalance) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      itemModel
          .listManiacPerkWMatchBalance
          .deleteFromUniqueIdByModelParameterListModel(maniacPerkWMatchBalance.uniqueId);
      break;
    }
  }

  void deleteSurvivorPerkWMatchBalanceFromNameByManiacWMatchBalanceAndSurvivorPerkWMatchBalanceParameterListModel(String nameByManiacWMatchBalance,SurvivorPerkWMatchBalance survivorPerkWMatchBalance) {
    for(T itemModel in listModel) {
      if(itemModel.name != nameByManiacWMatchBalance) {
        continue;
      }
      itemModel
          .listSurvivorPerkWMatchBalance
          .deleteFromUniqueIdByModelParameterListModel(survivorPerkWMatchBalance.uniqueId);
      break;
    }
  }
}