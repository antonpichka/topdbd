import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetEEManiacWMatchBalanceEEParameterTempCacheService<T extends ManiacWMatchBalance,Y extends ListManiacWMatchBalance<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getManiacWMatchBalanceParameterTempCacheService() {
    try {
      final maniacWMatchBalance = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.maniacWMatchBalance) as T;
      return Result<T>.success(maniacWMatchBalance);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}