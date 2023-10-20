import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetQQDiscordUserFirestoreQFirebaseFirestoreServiceQParameterStringQQForUniqueId<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getDiscordUserFirestoreFirebaseFirestoreServiceParameterStringForUniqueId(String parameter)
  async {
    try {
      final documentByDiscordUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByDiscordUser?.size ?? 0) <= 0) {
        return Result.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.getQQDiscordUserFirestoreQFirebaseFirestoreServiceQParameterStringQQForUniqueId));
      }
      return Result.success(DiscordUserFirestore(
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQUsername],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName]) as T);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}