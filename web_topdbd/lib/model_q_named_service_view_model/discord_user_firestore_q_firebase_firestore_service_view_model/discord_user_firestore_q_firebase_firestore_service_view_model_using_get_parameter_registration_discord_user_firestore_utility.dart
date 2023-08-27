import 'package:common_topdbd/model/discord_user_firestore/discord_user_firestore.dart';
import 'package:common_topdbd/model/discord_user_firestore/list_discord_user_firestore.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_firebase_firestore_service_utility.dart';
import 'package:common_topdbd/named_utility/registration_discord_user_firestore_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/firebase_firestore_service.dart';

base class DiscordUserFirestoreQFirebaseFirestoreServiceViewModelUsingGetParameterRegistrationDiscordUserFirestoreUtility<T extends DiscordUserFirestore,Y extends ListDiscordUserFirestore<T>>
    implements IGetModelFromNamedServiceParameterNamedDataSource<T,RegistrationDiscordUserFirestoreUtility>
{
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