import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/model/duf_w_country_w_role_user/duf_w_country_w_role_user.dart';
import 'package:common_topdbd/model/role_user/list_role_user.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListDUFWCountryWRoleUser<T extends DUFWCountryWRoleUser> extends BaseListModel<T> {
  const ListDUFWCountryWRoleUser(super.listModel) : super();

  @override
  ListDUFWCountryWRoleUser<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListDUFWCountryWRoleUser<T>(newListModel);
  }

  void insertListWhereEqualsUniqueIdByUserFromListDiscordUserFirestoreAndListCountryAndListRoleUser(ListDiscordUserFirestore listDiscordUserFirestore,ListCountry listCountry,ListRoleUser listRoleUser) {
    for(DiscordUserFirestore itemModel in listDiscordUserFirestore.listModel) {
      for(Country itemModelFIRST in listCountry.listModel) {
        if(itemModelFIRST.uniqueIdByUser != itemModel.uniqueIdByUser) {
          continue;
        }
        for(RoleUser itemModelSECOND in listRoleUser.listModel) {
          if(itemModelSECOND.uniqueIdByUser != itemModel.uniqueIdByUser) {
            continue;
          }
          super.insertFromNewModelParameterListModel(DUFWCountryWRoleUser(itemModel.getClone,itemModelFIRST.getClone,itemModelSECOND.getClone) as T);
          break;
        }
        break;
      }
    }
  }
}