import 'package:common_topdbd/model/maniac/list_maniac.dart';
import 'package:common_topdbd/model/maniac/maniac.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetListEEManiacEEParameterTempCacheService<T extends Maniac,Y extends ListManiac<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<Y> getListManiacParameterTempCacheService() {
    try {
      final listManiac = tempCacheService.getObjectFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.maniacQListManiac) as Y;
      return Result<Y>.success(listManiac);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}