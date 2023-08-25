import 'package:common_topdbd/model/user/list_user.dart';
import 'package:common_topdbd/model/user/user.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_shared_preferences_service_utility.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/model_q_named_service_view_model/named_service/shared_preferences_service.dart';

base class UserQSharedPreferencesServiceViewModelUsingGetNP<T extends User,Y extends ListUser<T>>
    implements IGetModelFromNamedServiceNPDataSource<T>
{
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