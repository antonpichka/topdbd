import 'package:common_topdbd/model/country/country.dart';
import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/role_user/role_user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DUFWCountryWRoleUser extends BaseModel {
  final DiscordUserFirestore discordUserFirestore;
  final Country country;
  final RoleUser roleUser;

  DUFWCountryWRoleUser(this.discordUserFirestore,this.country,this.roleUser) : super(discordUserFirestore.uniqueId);

  @override
  DUFWCountryWRoleUser get getClone => DUFWCountryWRoleUser(discordUserFirestore.getClone,country.getClone,roleUser.getClone);

  @override
  String toString() {
    return "DUFWCountryWRoleUser(discordUserFirestore: $discordUserFirestore, "
        "country: $country, "
        "roleUser: $roleUser)";
  }
}