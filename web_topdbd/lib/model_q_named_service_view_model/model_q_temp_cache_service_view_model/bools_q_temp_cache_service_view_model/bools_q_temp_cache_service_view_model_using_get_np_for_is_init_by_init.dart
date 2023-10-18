import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class BoolsQTempCacheServiceViewModelUsingGetNPForIsInitByInit<T extends Bools,Y extends ListBools<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<T>> getBoolsFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<T>> getModelFromNamedServiceNPDS()
  async {
    try {
      final isInitByInit = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.boolsQIsInitByInit) as bool;
      return Result<T>.success(Bools(isInitByInit) as T);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}