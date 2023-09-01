import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class IntsQTempCacheServiceViewModelUsingGetNPForMatchesLostByStats<T extends Ints,Y extends ListInts<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<T> getIntsFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final matchesLostByStats = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.intsQMatchesLostByStats) as int;
      return Ints.success(matchesLostByStats) as T;
    } on LocalException catch(e) {
      return Ints.exception(e) as T;
    } catch(e) {
      return Ints.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}