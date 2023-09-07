import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListManiac<T extends Maniac> extends BaseListModel<T> {
  const ListManiac(super.listModel) : super();

  @override
  ListManiac<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListManiac<T>(newListModel);
  }
}