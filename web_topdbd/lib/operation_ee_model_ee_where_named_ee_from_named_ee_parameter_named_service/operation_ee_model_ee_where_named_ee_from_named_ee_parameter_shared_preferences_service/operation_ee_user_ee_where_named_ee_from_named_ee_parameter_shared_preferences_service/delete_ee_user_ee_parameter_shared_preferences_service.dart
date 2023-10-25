import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_shared_preferences_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/shared_preferences_service.dart';

@immutable
base class DeleteEEUserEEParameterSharedPreferencesService<T extends User,Y extends ListUser<T>> {
  @protected
  final sharedPreferencesService = SharedPreferencesService.instance;

  Future<Result<bool>> deleteUserParameterSharedPreferencesService()
  async {
    try {
      final sharedPreferences = await sharedPreferencesService.getSharedPreferences;
      await sharedPreferences?.remove(KeysSharedPreferencesServiceUtility.userQQUniqueId);
      await sharedPreferences?.remove(KeysSharedPreferencesServiceUtility.userQQCreationTime);
      return Result<bool>.success(true);
    } catch (e) {
      return Result<bool>.exception(LocalException(this, EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}