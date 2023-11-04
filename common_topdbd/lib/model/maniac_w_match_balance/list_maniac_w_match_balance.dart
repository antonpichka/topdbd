import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/model/pick_maniac_w_matches/pick_maniac_w_matches.dart';
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
      for(BanManiacWMatches banManiacWMatches in listBanManiacWMatches) {
        if(banManiacWMatches.maniac.name == itemModel.maniac.name) {
          clone.deleteFromUniqueIdByManiacWMatchBalanceParameterListModel(itemModel.uniqueId);
          break;
        }
      }
      for(PickManiacWMatches pickManiacWMatches in listPickManiacWMatches) {
        if(pickManiacWMatches.maniac.name == itemModel.maniac.name) {
          clone.deleteFromUniqueIdByManiacWMatchBalanceParameterListModel(itemModel.uniqueId);
          break;
        }
      }
    }
    return clone.listModel;
  }

  void deleteFromUniqueIdByManiacWMatchBalanceParameterListModel(String uniqueIdByManiacWMatchBalance) {
    super.deleteFromUniqueIdByModelParameterListModel(uniqueIdByManiacWMatchBalance);
  }
}