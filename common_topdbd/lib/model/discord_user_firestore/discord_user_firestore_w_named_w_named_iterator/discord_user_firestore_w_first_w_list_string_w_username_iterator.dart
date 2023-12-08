import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DiscordUserFirestoreWFirstWListStringWUsernameIterator<T extends DiscordUserFirestore> extends BaseModelWNamedWNamedIterator<T> {
  final List<String> listString;

  DiscordUserFirestoreWFirstWListStringWUsernameIterator(this.listString);

  @override
  T get current {
    T clone = listModelIterator.first.getClone as T;
    if(listModelIterator.length <= 1) {
      listModelIterator.removeAt(0);
      listString.length > 1 ? listString.removeAt(0) : listModelIterator.clear();
      return clone;
    }
    int indexWRemove = 0;
    for(int i = 0; i < listModelIterator.length; i++) {
      final itemModelIterator = listModelIterator[i];
      if(itemModelIterator.username != listString.first) {
        continue;
      }
      clone = itemModelIterator.getClone as T;
      indexWRemove = i;
      break;
    }
    listModelIterator.removeAt(indexWRemove);
    listString.length > 1 ? listString.removeAt(0) : listModelIterator.clear();
    return clone;
  }
}