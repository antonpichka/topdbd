import 'package:common_topdbd/model/ban_maniac_where_matches/ban_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListBanManiacWhereMatches<T extends BanManiacWhereMatches> extends BaseListModel<T> {
  const ListBanManiacWhereMatches(super.listModel) : super();

  @override
  ListBanManiacWhereMatches<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListBanManiacWhereMatches<T>(newListModel);
  }

  void insertToListBanManiacWhereMatches(T banManiacWhereMatches) {
    insertToListModel(banManiacWhereMatches);
  }

  void insertListToListBanManiacWhereMatches(List<T> listBanManiacWhereMatches) {
    insertListToListModel(listBanManiacWhereMatches);
  }
}