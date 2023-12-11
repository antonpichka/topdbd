import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/stats/stats.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class TopPlayers extends BaseModel {
  final DiscordUserFirestore discordUserFirestore;
  final Country country;
  final Stats stats;

  TopPlayers(this.discordUserFirestore,this.country,this.stats) : super(discordUserFirestore.uniqueId);

  @override
  TopPlayers get getClone => TopPlayers(discordUserFirestore.getClone,country.getClone,stats.getClone);

  @override
  String toString() {
    return "TopPlayers(discordUserFirestore: $discordUserFirestore, "
        "country: $country, "
        "stats: $stats)";
  }
}