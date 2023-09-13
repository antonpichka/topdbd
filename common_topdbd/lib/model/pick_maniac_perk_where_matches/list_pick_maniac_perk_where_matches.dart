import 'package:common_topdbd/model/pick_maniac_perk_where_matches/pick_maniac_perk_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickManiacPerkWhereMatches<T extends PickManiacPerkWhereMatches> extends BaseListModel<T> {
  const ListPickManiacPerkWhereMatches(super.listModel) : super();

  @override
  ListPickManiacPerkWhereMatches<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListPickManiacPerkWhereMatches<T>(newListModel);
  }

  void insertToListPickManiacPerkWhereMatches(T model) {
    super.insertToListModel(model);
  }
}