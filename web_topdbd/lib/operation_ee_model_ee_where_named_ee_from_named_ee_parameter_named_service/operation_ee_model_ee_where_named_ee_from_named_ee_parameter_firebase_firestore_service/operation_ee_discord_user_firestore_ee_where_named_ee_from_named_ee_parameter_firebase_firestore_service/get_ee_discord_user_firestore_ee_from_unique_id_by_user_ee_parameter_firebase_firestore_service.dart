import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class GetEEDiscordUserFirestoreEEFromUniqueIdByUserEEParameterFirebaseFirestoreService<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> getDiscordUserFirestoreFromUniqueIdByUserParameterFirebaseFirestoreService(String uniqueIdByUser)
  async {
    try {
      final documentByDiscordUser = await firebaseFirestoreService
          .getParameterFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueIdByUser,isEqualTo: uniqueIdByUser)
          .limit(1)
          .get();
      if((documentByDiscordUser?.size ?? 0) <= 0) {
        return Result.exception(LocalException(this,EnumGuilty.user,KeysExceptionUtility.getEEDiscordUserFirestoreEEFromUniqueIdByUserEEParameterFirebaseFirestoreService));
      }
      return Result.success(DiscordUserFirestore(
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueId] ?? "",
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUniqueIdByUser] ?? "",
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQQUsername] ?? "",
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQQGlobalName] ?? "") as T);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}