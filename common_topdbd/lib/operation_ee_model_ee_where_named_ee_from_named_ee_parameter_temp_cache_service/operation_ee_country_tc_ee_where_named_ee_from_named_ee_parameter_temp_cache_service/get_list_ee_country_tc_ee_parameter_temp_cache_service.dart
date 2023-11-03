import 'package:common_topdbd/model/country_tc/country_tc.dart';
import 'package:common_topdbd/model/country_tc/list_country_tc.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class GetListEECountryTCEEParameterTempCacheService<T extends CountryTC,Y extends ListCountryTC<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<Y> getListCountryTCParameterTempCacheService() {
    try {
      final listCountryTC = tempCacheService.getObjectFromKeyTempCacheParameterTempCache(KeysTempCacheServiceUtility.listCountryTC) as Y;
      return Result<Y>.success(listCountryTC);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}