import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/username_w_global_name_to_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class UpdateEEDiscordUserFirestoreEEFromUsernameWGlobalNameToDiscordUserFirestoreUtilityEEParameterFirebaseFirestoreService<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> updateDiscordUserFirestoreFromUsernameWGlobalNameToDiscordUserFirestoreUtilityParameterFirebaseFirestoreService(UsernameWGlobalNameToDiscordUserFirestoreUtility usernameWGlobalNameToDiscordUserFirestoreUtility)
  async {
    try {
      final listDocumentByDiscordUser = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueId, isEqualTo: usernameWGlobalNameToDiscordUserFirestoreUtility.uniqueId)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueIdByUser, isEqualTo: usernameWGlobalNameToDiscordUserFirestoreUtility.uniqueIdByUser)
          .limit(1)
          .get();
      if(!(listDocumentByDiscordUser?.docs[0].exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.updateEEDiscordUserFirestoreEEFromUsernameWGlobalNameToDiscordUserFirestoreUtilityEEParameterFirebaseFirestoreService));
      }
      final firstItemDocumentByDiscordUser = listDocumentByDiscordUser?.docs[0];
      await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .doc(firstItemDocumentByDiscordUser?.id)
          .update({
        KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueId : firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueId],
        KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueIdByUser : firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueIdByUser],
        KeysFirebaseFirestoreServiceUtility.discordUserQQUsername : usernameWGlobalNameToDiscordUserFirestoreUtility.newUsername,
        KeysFirebaseFirestoreServiceUtility.discordUserQQGlobalName : usernameWGlobalNameToDiscordUserFirestoreUtility.newGlobalName
          });
      return Result<T>.success(DiscordUserFirestore(
          firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueId],
          firstItemDocumentByDiscordUser?.data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueIdByUser],
          usernameWGlobalNameToDiscordUserFirestoreUtility.newUsername,
          usernameWGlobalNameToDiscordUserFirestoreUtility.newGlobalName) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}