import 'package:common_topdbd/model/uibu_w_ubdu/list_uibu_w_ubdu.dart';
import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetEEUIBUWUBDUEEParameterTempCacheService<T extends UIBUWUBDU,Y extends ListUIBUWUBDU<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<T> getUIBUWUBDUParameterTempCacheService() {
    try {
      final uIBUWUBDU = tempCacheService.getFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.uIBUWUBDU) as T;
      return Result<T>.success(uIBUWUBDU);
    } on LocalException catch(e) {
      return Result<T>.exception(e);
    } catch(e) {
      return Result<T>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}