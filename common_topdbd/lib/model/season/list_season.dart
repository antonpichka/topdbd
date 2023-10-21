import 'package:common_topdbd/model/season/season.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListSeason<T extends Season> extends BaseListModel<T> {
  const ListSeason(super.listModel) : super();

  @override
  ListSeason<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListSeason<T>(newListModel);
  }
}