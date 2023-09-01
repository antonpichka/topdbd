import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class BoolsQTempCacheServiceViewModelUsingGetNPForIsVerifiedUserByVerifiedUserSP<T extends Bools,Y extends ListBools<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<T> getBoolsFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final isVerifiedUserByVerifiedUserSP = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.boolsQIsVerifiedUserByVerifiedUserSP) as bool;
      return Bools.success(isVerifiedUserByVerifiedUserSP) as T;
    } on LocalException catch(e) {
      return Bools.exception(e) as T;
    } catch(e) {
      return Bools.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}