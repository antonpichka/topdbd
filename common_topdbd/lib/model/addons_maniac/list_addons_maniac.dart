import 'package:common_topdbd/model/addons_maniac/addons_maniac.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListAddonsManiac<T extends AddonsManiac> extends BaseListModel<T> {
  const ListAddonsManiac(super.listModel) : super();

  @override
  ListAddonsManiac<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListAddonsManiac<T>(newListModel);
  }
}