import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

base class DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationDiscordUserFirestoreUtility<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> extends BaseGetModelFromNamedServiceParameterNamedDataSource<T,RegistrationDiscordUserFirestoreUtility> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<T> getDiscordUserFirestoreFromFirebaseFirestoreServiceParameterRegistrationDiscordUserFirestoreUtilityDS(RegistrationDiscordUserFirestoreUtility parameter) {
    return getModelFromNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceParameterNamedDS(RegistrationDiscordUserFirestoreUtility parameter)
  async {
    try {
      final documentByDiscordUserWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId : parameter.uniqueId,
        KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser : parameter.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.discordUserQUsername : parameter.username,
        KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName : parameter.globalName
          });
      final documentByDiscordUser = await documentByDiscordUserWhereAdding?.get();
      if(!(documentByDiscordUser?.exists ?? false)) {
        return DiscordUserFirestore.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.discordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationDiscordUserFirestoreUtilityQWhereLocalExceptionGuiltyUserNoExists)) as T;
      }
      return DiscordUserFirestore.success(
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId],
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser],
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQUsername],
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName]) as T;
    } catch(e) {
      return DiscordUserFirestore.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}