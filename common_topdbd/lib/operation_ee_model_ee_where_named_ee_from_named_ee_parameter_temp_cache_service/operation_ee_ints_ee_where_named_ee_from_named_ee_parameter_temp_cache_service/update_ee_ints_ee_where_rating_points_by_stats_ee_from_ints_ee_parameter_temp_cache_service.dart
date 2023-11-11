import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEIntsEEWhereRatingPointsByStatsEEFromIntsEEParameterTempCacheService<T extends Ints,Y extends ListInts<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateIntsWhereRatingPointsByStatsFromIntsParameterTempCacheService(T ints) {
    try {
      tempCacheService.updateFromKeyTempCacheAndValueParameterTempCache(KeysTempCacheServiceUtility.intsQQRatingPointsByStats,ints);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}