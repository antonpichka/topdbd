import 'package:common_topdbd/model/maniac_w_match_balance/list_maniac_w_match_balance.dart';
import 'package:common_topdbd/model/maniac_w_match_balance/maniac_w_match_balance.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEManiacWMatchBalanceEEWhereStreamNotificationIsPossibleEEFromManiacWMatchBalanceEEParameterTempCacheService<T extends ManiacWMatchBalance,Y extends ListManiacWMatchBalance<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateManiacWMatchBalanceWhereStreamNotificationIsPossibleFromManiacWMatchBalanceParameterTempCacheService(T maniacWMatchBalance) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.maniacWMatchBalance,maniacWMatchBalance);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}