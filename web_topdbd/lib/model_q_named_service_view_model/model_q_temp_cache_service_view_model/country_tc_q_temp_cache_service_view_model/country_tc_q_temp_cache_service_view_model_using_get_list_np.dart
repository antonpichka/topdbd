import 'package:common_topdbd/model/country_tc/country_tc.dart';
import 'package:common_topdbd/model/country_tc/list_country_tc.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class CountryTCQTempCacheServiceViewModelUsingGetListNP<T extends CountryTC,Y extends ListCountryTC<T>> extends BaseGetListModelFromNamedServiceNPDataSource<Y> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<Y>> getListCountryTCFromTempCacheServiceNPDS() {
    return getListModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<Y>> getListModelFromNamedServiceNPDS()
  async {
    try {
      final listCountryTC = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.countryTCQListCountryTC) as Y;
      return Result<Y>.success(listCountryTC);
    } on LocalException catch(e) {
      return Result<Y>.exception(e);
    } catch(e) {
      return Result<Y>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}