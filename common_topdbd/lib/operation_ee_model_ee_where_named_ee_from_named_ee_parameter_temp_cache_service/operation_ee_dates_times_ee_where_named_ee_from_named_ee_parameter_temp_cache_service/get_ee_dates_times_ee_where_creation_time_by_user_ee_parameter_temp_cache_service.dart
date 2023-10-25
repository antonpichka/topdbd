import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetEEDatesTimesEEWhereCreationTimeByUserEEParameterTempCacheService<T extends DatesTimes,Y extends ListDatesTimes<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getDatesTimesWhereCreationTimeByUserParameterTempCacheService() {
    try {
      final datesTimes = tempCacheService.getObjectFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.datesTimesQCreationTimeByUser) as T;
      return Result<T>.success(datesTimes);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}