import 'package:common_topdbd/model/match_balance/list_match_balance.dart';
import 'package:common_topdbd/model/match_balance/match_balance.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEMatchBalanceEEWhereItsLikeMutableEEFromMatchBalanceEEParameterTempCacheService<T extends MatchBalance,Y extends ListMatchBalance<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateMatchBalanceWhereItsLikeMutableFromMatchBalanceParameterTempCacheService(T matchBalance) {
    try {
      tempCacheService.updateFromKeyTempCacheAndValueParameterTempCache(KeysTempCacheServiceUtility.matchBalanceQQItsLikeMutable,matchBalance);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}