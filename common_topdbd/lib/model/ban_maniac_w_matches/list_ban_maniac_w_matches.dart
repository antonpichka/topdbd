import 'package:common_topdbd/model/ban_maniac_w_matches/ban_maniac_w_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListBanManiacWMatches<T extends BanManiacWMatches> extends BaseListModel<T> {
  const ListBanManiacWMatches(super.listModel) : super();

  @override
  ListBanManiacWMatches<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListBanManiacWMatches<T>(newListModel);
  }

  List<T> getListBanManiacWMatchesWhereEqualsFromUniqueIdByUserParameterListModel(String uniqueIdByUser) {
    final listBanManiacWMatches = ListBanManiacWMatches<T>(List.empty(growable: true));
    for(T itemModel in listModel) {
      if(itemModel.uniqueIdByUser == uniqueIdByUser) {
        listBanManiacWMatches.insertFromNewModelParameterListModel(itemModel.getClone as T);
        continue;
      }
    }
    return listBanManiacWMatches.listModel;
  }
}