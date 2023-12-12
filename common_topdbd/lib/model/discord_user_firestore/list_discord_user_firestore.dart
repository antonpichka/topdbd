import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore_w_named_w_named_w_named_iterator/discord_user_firestore_w_first_w_list_string_w_username_iterator.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDiscordUserFirestore<T extends DiscordUserFirestore> extends BaseListModel<T> {
  const ListDiscordUserFirestore(super.listModel) : super();

  @override
  ListDiscordUserFirestore<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListDiscordUserFirestore<T>(newListModel);
  }

  List<String> get getListStringWhereAdditionUsernameParameterListModel {
    final List<String> listString = List.empty(growable: true);
    for(T itemModel in listModel) {
      listString.add(itemModel.username);
    }
    return listString;
  }

  List<String> get getListStringWhereAdditionUniqueIdByUserParameterListModel {
    final List<String> listString = List.empty(growable: true);
    for(T itemModel in listModel) {
      listString.add(itemModel.uniqueIdByUser);
    }
    return listString;
  }

  void sortingWhereDiscordUserFirestoreWFirstWListStringWUsernameIteratorFromListStringParameterOne(List<String> listString) {
    if(listString.isEmpty) {
      listModel.clear();
      return;
    }
    super.sortingFromModelWNamedWNamedWNamedIteratorParameterListModel(DiscordUserFirestoreWFirstWListStringWUsernameIterator(listString));
  }
}