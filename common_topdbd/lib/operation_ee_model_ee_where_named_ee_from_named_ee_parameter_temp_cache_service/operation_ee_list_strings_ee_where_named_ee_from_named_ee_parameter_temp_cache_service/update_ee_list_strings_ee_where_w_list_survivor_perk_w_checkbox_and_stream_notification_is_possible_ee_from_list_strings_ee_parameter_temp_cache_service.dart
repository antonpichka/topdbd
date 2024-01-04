import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEListStringsEEWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleEEFromListStringsEEParameterTempCacheService<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateListStringsWhereWListSurvivorPerkWCheckboxAndStreamNotificationIsPossibleFromListStringsParameterTempCacheService(Y listStrings) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.listStringsQQWListSurvivorPerkWCheckbox,listStrings);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}