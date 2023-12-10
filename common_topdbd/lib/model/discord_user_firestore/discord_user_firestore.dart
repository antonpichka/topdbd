import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class DiscordUserFirestore extends BaseModel {
  final String uniqueIdByUser;
  final String username;
  final String globalName;

  const DiscordUserFirestore(super.uniqueId,this.uniqueIdByUser,this.username,this.globalName) : super();

  @override
  DiscordUserFirestore get getClone => DiscordUserFirestore(uniqueId,uniqueIdByUser,username,globalName);

  @override
  String toString() {
    return "DiscordUserFirestore(uniqueId: $uniqueId, "
        "uniqueIdByUser: $uniqueIdByUser, "
        "username: $username, "
        "globalName: $globalName)";
  }

  String get getStringWhereSubstringParameterUsername {
    return username.length >  9 ? "${username.substring(0,9)}..." : username;
  }
}