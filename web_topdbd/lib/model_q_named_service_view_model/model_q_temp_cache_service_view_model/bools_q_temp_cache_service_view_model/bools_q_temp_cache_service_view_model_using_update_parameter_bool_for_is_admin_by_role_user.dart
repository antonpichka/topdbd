import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BoolsQTempCacheServiceViewModelUsingUpdateParameterBoolForIsAdminByRoleUser<T extends Bools,Y extends ListBools<T>> extends BaseUpdateModelToNamedServiceParameterNamedDataSource<bool,bool> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<bool>> updateBoolsToTempCacheServiceParameterBoolDS(bool parameter) {
    return updateModelToNamedServiceParameterNamedDS(parameter);
  }

  @protected
  @override
  Future<Result<bool>> updateModelToNamedServiceParameterNamedDS(bool parameter)
  async {
    try {
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.boolsQIsAdminByRoleUser,parameter);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }

}