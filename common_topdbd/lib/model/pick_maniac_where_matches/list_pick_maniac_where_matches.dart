import 'package:common_topdbd/model/pick_maniac_where_matches/pick_maniac_where_matches.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListPickManiacWhereMatches<T extends PickManiacWhereMatches> extends BaseListModel<T> {
  const ListPickManiacWhereMatches(super.listModel) : super();

  @override
  ListPickManiacWhereMatches<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListPickManiacWhereMatches<T>(newListModel);
  }
}