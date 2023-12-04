import 'package:common_topdbd/model/uibu_w_ubdu/list_uibu_w_ubdu.dart';
import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UpdateEEUIBUWUBDUEEWhereStreamNotificationIsPossibleEEFromUIBUWUBDUEEParameterTempCacheService<T extends UIBUWUBDU, Y extends ListUIBUWUBDU<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateUIBUWUBDUWhereStreamNotificationIsPossibleFromUIBUWUBDUParameterTempCacheService(T uIBUWUBDU) {
    try {
      tempCacheService.updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(KeysTempCacheServiceUtility.uIBUWUBDU,uIBUWUBDU);
      return Result.success(true);
    } catch(e) {
      return Result.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}