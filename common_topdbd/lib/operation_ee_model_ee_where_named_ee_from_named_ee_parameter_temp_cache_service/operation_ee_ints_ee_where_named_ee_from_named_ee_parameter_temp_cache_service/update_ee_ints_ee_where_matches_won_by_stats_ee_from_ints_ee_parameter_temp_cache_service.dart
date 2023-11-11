import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEIntsEEWhereMatchesWonByStatsEEFromIntsEEParameterTempCacheService<T extends Ints,Y extends ListInts<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateIntsWhereMatchesWonByStatsFromIntsParameterTempCacheService(T ints) {
    try {
      tempCacheService.updateFromKeyTempCacheAndValueParameterTempCache(KeysTempCacheServiceUtility.intsQQMatchesWonByStats,ints);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}