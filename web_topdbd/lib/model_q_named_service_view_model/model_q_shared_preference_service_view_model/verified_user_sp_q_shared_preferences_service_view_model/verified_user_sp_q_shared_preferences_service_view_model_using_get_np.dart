import 'package:common_topdbd/model/verified_user_sp/list_verified_user_sp.dart';
import 'package:common_topdbd/model/verified_user_sp/verified_user_sp.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_shared_preferences_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/shared_preferences_service.dart';

base class VerifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP<T extends VerifiedUserSP,Y extends ListVerifiedUserSP<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final sharedPreferencesService = SharedPreferencesService.instance;

  Future<T> getVerifiedUserSPFromSharedPreferencesServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final sharedPreferences = await sharedPreferencesService.getSharedPreferences;
      final isVerifiedUser = sharedPreferences?.getBool(KeysSharedPreferencesServiceUtility.verifiedUserSPQIsVerifiedUser) ?? false;
      return VerifiedUserSP.success(isVerifiedUser) as T;
    } catch (e) {
      return VerifiedUserSP.exception(LocalException(this, EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}