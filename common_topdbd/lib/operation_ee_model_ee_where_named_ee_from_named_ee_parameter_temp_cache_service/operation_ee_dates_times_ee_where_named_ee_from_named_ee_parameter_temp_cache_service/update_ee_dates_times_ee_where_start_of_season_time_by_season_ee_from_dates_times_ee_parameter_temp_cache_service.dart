import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEDatesTimesEEWhereStartOfSeasonTimeBySeasonEEFromDatesTimesEEParameterTempCacheService<T extends DatesTimes,Y extends ListDatesTimes<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateDatesTimesWhereStartOfSeasonTimeBySeasonFromDatesTimesParameterTempCacheService(T datesTimes) {
    try {
      tempCacheService.updateFromKeyTempCacheAndValueParameterTempCache(KeysTempCacheServiceUtility.datesTimesQQStartOfSeasonTimeBySeason,datesTimes);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}