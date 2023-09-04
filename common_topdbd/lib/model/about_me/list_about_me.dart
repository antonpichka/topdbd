import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListAboutMe<T extends AboutMe> extends BaseListModel<T> {
  const ListAboutMe(super.listModel) : super();

  @override
  ListAboutMe<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListAboutMe<T>(newListModel);
  }
}