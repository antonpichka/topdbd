import 'package:common_topdbd/model/discord_user/discord_user.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListDiscordUser<T extends DiscordUser> extends BaseListModel<T> {
  ListDiscordUser.success(super.listModel) : super.success();
  ListDiscordUser.exception(super.exception) : super.exception();

  @override
  ListDiscordUser<T> get getCloneListModel {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel ?? List.empty(growable: true)) {
      newListModel.add(model.getCloneModel as T);
    }
    return ListDiscordUser<T>.success(newListModel);
  }
}