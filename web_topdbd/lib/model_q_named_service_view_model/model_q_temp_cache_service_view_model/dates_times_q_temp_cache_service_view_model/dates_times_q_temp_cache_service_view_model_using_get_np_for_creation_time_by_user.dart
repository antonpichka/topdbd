import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

base class DatesTimesQTempCacheServiceViewModelUsingGetNPForCreationTimeByUser<T extends DatesTimes,Y extends ListDatesTimes<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<T> getDatesTimesFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final creationTimeByUser = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.datesTimesQCreationTimeByUser) as DateTime;
      return DatesTimes.success(creationTimeByUser) as T;
    } on LocalException catch(e) {
      return DatesTimes.exception(e) as T;
    } catch(e) {
      return DatesTimes.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}