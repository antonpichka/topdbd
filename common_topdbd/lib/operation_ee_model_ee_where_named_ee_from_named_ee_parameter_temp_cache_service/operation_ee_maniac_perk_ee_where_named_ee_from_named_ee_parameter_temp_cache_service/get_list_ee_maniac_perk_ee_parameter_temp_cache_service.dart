import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetListEEManiacPerkEEParameterTempCacheService<T extends ManiacPerk,Y extends ListManiacPerk<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<Y> getListManiacPerkParameterTempCacheService() {
    try {
      final listManiacPerk = tempCacheService.getObjectFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.listManiacPerk) as Y;
      return Result<Y>.success(listManiacPerk);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}