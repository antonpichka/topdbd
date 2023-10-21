import 'package:common_topdbd/model/those_works/those_works.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListThoseWorks<T extends ThoseWorks> extends BaseListModel<T> {
  const ListThoseWorks(super.listModel) : super();

  @override
  ListThoseWorks<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListThoseWorks<T>(newListModel);
  }
}