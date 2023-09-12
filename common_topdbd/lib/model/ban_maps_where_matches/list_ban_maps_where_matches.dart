import 'package:common_topdbd/model/ban_maps_where_matches/ban_maps_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListBanMapsWhereMatches<T extends BanMapsWhereMatches> extends BaseListModel<T> {
  const ListBanMapsWhereMatches(super.listModel) : super();

  @override
  ListBanMapsWhereMatches<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListBanMapsWhereMatches<T>(newListModel);
  }

  void insertToListBanMapsWhereMatches(T model) {
    super.insertToListModel(model);
  }
}