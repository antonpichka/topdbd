import 'package:common_topdbd/model/verified_user_sp/verified_user_sp.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class ListVerifiedUserSP<T extends VerifiedUserSP> extends BaseListModel<T> {
  ListVerifiedUserSP.success(super.listModel) : super.success();
  ListVerifiedUserSP.exception(super.exception) : super.exception();

  @override
  ListVerifiedUserSP<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListVerifiedUserSP<T>.success(newListModel);
  }
}