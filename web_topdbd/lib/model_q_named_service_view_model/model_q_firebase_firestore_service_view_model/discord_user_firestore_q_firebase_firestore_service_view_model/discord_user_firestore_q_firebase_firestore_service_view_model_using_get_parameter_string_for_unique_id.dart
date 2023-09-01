import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueId<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,String> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterStringDS(String parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(String parameter)
  async {
    try {
      final documentByDiscordUser = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .where(KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId,isEqualTo: parameter)
          .limit(1)
          .get();
      if((documentByDiscordUser?.size ?? 0) <= 0) {
        return DiscordUserFirestore.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterStringForUniqueIdQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return DiscordUserFirestore.success(
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQUsername],
          documentByDiscordUser?.docs[0].data()[KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName]) as T;
    } catch(e) {
      return DiscordUserFirestore.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}