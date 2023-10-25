import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_shared_preferences_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/shared_preferences_service.dart';

@immutable
base class GetEEUserEEParameterSharedPreferencesService<T extends User,Y extends ListUser<T>> {
  @protected
  final sharedPreferencesService = SharedPreferencesService.instance;

  Future<Result<T>> getUserParameterSharedPreferencesService()
  async {
    try {
      final sharedPreferences = await sharedPreferencesService.getSharedPreferences;
      final uniqueId = sharedPreferences?.getString(KeysSharedPreferencesServiceUtility.userQQUniqueId) ?? "";
      final creationTime = DateTime.fromMillisecondsSinceEpoch(sharedPreferences?.getInt(KeysSharedPreferencesServiceUtility.userQQCreationTime) ?? 0);
      return Result<T>.success(User(uniqueId,creationTime) as T);
    } catch (e) {
      return Result<T>.exception(LocalException(this, EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}