import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDiscordUserFirestore<T extends DiscordUserFirestore> extends BaseListModel<T> {
  const ListDiscordUserFirestore(super.listModel) : super();

  @override
  ListDiscordUserFirestore<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDiscordUserFirestore<T>(newListModel);
  }
}