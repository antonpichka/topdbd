import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

base class ListDiscordUserFirestore<T extends DiscordUserFirestore> extends BaseListModel<T> {
  ListDiscordUserFirestore.success(super.listModel) : super.success();
  ListDiscordUserFirestore.exception(super.exception) : super.exception();

  @override
  ListDiscordUserFirestore<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDiscordUserFirestore<T>.success(newListModel);
  }
}