import 'package:common_topdbd/model/last_login_time_user/last_login_time_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListLastLoginTimeUser<T extends LastLoginTimeUser> extends BaseListModel<T> {
  const ListLastLoginTimeUser(super.listModel) : super();

  @override
  ListLastLoginTimeUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListLastLoginTimeUser<T>(newListModel);
  }
}