import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/country/list_country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/model/stats/list_stats.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:common_topdbd/model/top_players/top_players.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class ListTopPlayers<T extends TopPlayers> extends BaseListModel<T> {
  const ListTopPlayers(super.listModel) : super();

  @override
  ListTopPlayers<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListTopPlayers<T>(newListModel);
  }

  void insertFromListStatsAndListDiscordUserFirestoreAndListCountry(ListStats listStats,ListDiscordUserFirestore listDiscordUserFirestore,ListCountry listCountry) {
    for(Stats itemModel in listStats.listModel) {
      for(DiscordUserFirestore itemModelFIRST in listDiscordUserFirestore.listModel) {
        if(itemModelFIRST.uniqueIdByUser != itemModel.uniqueIdByUser) {
          continue;
        }
        for(Country itemModelSECOND in listCountry.listModel) {
          if(itemModelSECOND.uniqueIdByUser != itemModel.uniqueIdByUser) {
            continue;
          }
          super.insertFromNewModelParameterListModel(TopPlayers(itemModelFIRST.getClone,itemModelSECOND.getClone,itemModel.getClone) as T);
          break;
        }
        break;
      }
    }
  }

  void deleteWhereRangeOrClearFromNumberParameterListModel(int number) {
    final length = listModel.length;
    if(length >= number) {
      listModel.removeRange(0,(number-1));
      return;
    }
    listModel.clear();
  }
}