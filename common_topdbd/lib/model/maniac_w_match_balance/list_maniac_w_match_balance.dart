import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/maniac_perk_w_match_balance/list_maniac_perk_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maps_w_match_balance/list_maps_w_match_balance.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
import 'package:common_topdbd/model/survivor_perk_w_match_balance/list_survivor_perk_w_match_balance.dart';
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
}