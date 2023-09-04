import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListVerifiedUser<T extends VerifiedUser> extends BaseListModel<T> {
  const ListVerifiedUser(super.listModel) : super();

  @override
  ListVerifiedUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListVerifiedUser<T>(newListModel);
  }
}