import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_shared_preferences_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/shared_preferences_service.dart';

base class UserQSharedPreferencesServiceViewModelUsingGetNP<T extends User,Y extends ListUser<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final sharedPreferencesService = SharedPreferencesService.instance;

  Future<T> getUserFromSharedPreferencesServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final sharedPreferences = await sharedPreferencesService.getSharedPreferences;
      final uniqueId = sharedPreferences?.getString(KeysSharedPreferencesServiceUtility.userQUniqueId) ?? "";
      final creationTime = DateTime.fromMillisecondsSinceEpoch(sharedPreferences?.getInt(KeysSharedPreferencesServiceUtility.userQCreationTime) ?? 0);
      return User.success(uniqueId,creationTime) as T;
    } catch (e) {
      return User.exception(LocalException(this, EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}