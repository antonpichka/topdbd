import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/firebase_firestore_service.dart';

@immutable
base class InsertEEDiscordUserFirestoreEEFromRegistrationDiscordUserFirestoreUtilityEEParameterFirebaseFirestoreService<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>> {
  @protected
  final firebaseFirestoreService = FirebaseFirestoreService.instance;

  Future<Result<T>> insertDiscordUserFirestoreFromRegistrationDiscordUserFirestoreUtilityParameterFirebaseFirestoreService(RegistrationDiscordUserFirestoreUtility registrationDiscordUserFirestoreUtility)
  async {
    try {
      final documentByDiscordUserWhereAdding = await firebaseFirestoreService
          .getFirebaseFirestore
          ?.collection(KeysFirebaseFirestoreServiceUtility.discordUser)
          .add({
        KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId : registrationDiscordUserFirestoreUtility.uniqueId,
        KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser : registrationDiscordUserFirestoreUtility.uniqueIdByUser,
        KeysFirebaseFirestoreServiceUtility.discordUserQUsername : registrationDiscordUserFirestoreUtility.username,
        KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName : registrationDiscordUserFirestoreUtility.globalName
          });
      final documentByDiscordUser = await documentByDiscordUserWhereAdding?.get();
      if(!(documentByDiscordUser?.exists ?? false)) {
        return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.user,KeysExceptionUtility.insertEEDiscordUserFirestoreEEFromRegistrationDiscordUserFirestoreUtilityEEParameterFirebaseFirestoreService));
      }
      return Result<T>.success(DiscordUserFirestore(
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueId],
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQUniqueIdByUser],
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQUsername],
          documentByDiscordUser?.data()?[KeysFirebaseFirestoreServiceUtility.discordUserQGlobalName]) as T);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}