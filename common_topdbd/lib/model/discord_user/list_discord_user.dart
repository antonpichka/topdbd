import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDiscordUser<T extends DiscordUser> extends BaseListModel<T> {
  const ListDiscordUser(super.listModel) : super();

  @override
  ListDiscordUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDiscordUser<T>(newListModel);
  }
}