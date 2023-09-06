import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/update_username_and_global_name_to_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> extends BaseUpdateModelToNamedServiceParameterNamedDataSource<T,UpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> updateDiscordUserFirestoreToFirebaseFirestoreServiceParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtilityDS(UpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility parameter) {
    return updateModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<T>> updateModelToNamedServiceParameterNamedDS(UpdateUsernameAndGlobalNameToDiscordUserFirestoreUtility parameter)
  async {
    try {
      final listDocumentByDiscordUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId, isEqualTo: parameter.uniqueId)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser, isEqualTo: parameter.uniqueIdByUser)
          .limit(1)
          .get();
      if(!(listDocumentByDiscordUser?.docs[0].exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingUpdateParameterUpdateUsernameAndGlobalNameToDiscordUserFirestoreUtilityQWhereLocalExceptionGuiltyUserNoExists));
      }
      final firstItemDocumentByDiscordUser = listDocumentByDiscordUser?.docs[0];
      await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .doc(firstItemDocumentByDiscordUser?.id)
          .update({
        KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId : firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId],
        KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser : firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser],
        KeysFirebaseFirestoreServiceUtility.discordUserQUsername : parameter.newUsername,
        KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName : parameter.newGlobalName
          });
      return Result<T>.success(DiscordUserFirestore(
          firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId],
          firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser],
          parameter.newUsername,
          parameter.newGlobalName) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}