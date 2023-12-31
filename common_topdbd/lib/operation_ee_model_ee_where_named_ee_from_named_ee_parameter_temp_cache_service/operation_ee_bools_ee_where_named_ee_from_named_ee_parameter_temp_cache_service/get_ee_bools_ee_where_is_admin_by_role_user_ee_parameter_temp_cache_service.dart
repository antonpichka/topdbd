import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetEEBoolsEEWhereIsAdminByRoleUserEEParameterTempCacheService<T extends Bools,Y extends ListBools<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getBoolsWhereIsAdminByRoleUserParameterTempCacheService() {
    try {
      final bools = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.boolsQQIsAdminByRoleUser) as T;
      return Result<T>.success(bools);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}