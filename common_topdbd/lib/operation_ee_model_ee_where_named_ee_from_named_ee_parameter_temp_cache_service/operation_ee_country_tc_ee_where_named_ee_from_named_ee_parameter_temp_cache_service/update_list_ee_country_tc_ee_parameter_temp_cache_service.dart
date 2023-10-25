import 'package:common_topdbd/model/country_tc/country_tc.dart';
import 'package:common_topdbd/model/country_tc/list_country_tc.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';

@immutable
base class UpdateListEECountryTCEEParameterTempCacheService<T extends CountryTC,Y extends ListCountryTC<T>> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Result<bool> updateListCountryTCParameterTempCacheService() {
    try {
      tempCacheService.updateObjectFromKeyTempCacheAndValueParameterTempCache(KeysTempCacheServiceUtility.countryTCQQListCountryTC,ReadyDataUtility.getListCountryTC);
      return Result<bool>.success(true);
    } on LocalException catch(e) {
      return Result<bool>.exception(e);
    } catch(e) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}