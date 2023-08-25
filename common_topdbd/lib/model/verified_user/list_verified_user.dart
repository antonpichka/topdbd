import 'package:common_topdbd/model/verified_user/verified_user.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListVerifiedUser<T extends VerifiedUser> extends BaseListModel<T> {
  ListVerifiedUser.success(super.listModel) : super.success();
  ListVerifiedUser.exception(super.exception) : super.exception();

  @override
  ListVerifiedUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListVerifiedUser<T>.success(newListModel);
  }
}