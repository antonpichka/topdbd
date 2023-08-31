import 'package:common_topdbd/model/about_me/about_me.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListAboutMe<T extends AboutMe> extends BaseListModel<T> {
  ListAboutMe.success(super.listModel) : super.success();
  ListAboutMe.exception(super.exception) : super.exception();

  @override
  ListAboutMe<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListAboutMe<T>.success(newListModel);
  }
}