import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetEEIntsEEWhereMatchesLostByStatsEEParameterTempCacheService<T extends Ints,Y extends ListInts<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getIntsWhereMatchesLostByStatsParameterTempCacheService() {
    try {
      final ints = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.intsQQMatchesLostByStats) as T;
      return Result<T>.success(ints);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}