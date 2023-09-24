import 'package:common_topdbd/model/maniac_perk/list_maniac_perk.dart';
import 'package:common_topdbd/model/maniac_perk/maniac_perk.dart';
import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:common_topdbd/named_utility/ready_data_utility.dart';

base class ManiacPerkQTempCacheServiceViewModelUsingUpdateListNP<T extends ManiacPerk,Y extends ListManiacPerk<T>> extends BaseUpdateListModelToNamedServiceNPDataSource<bool> {
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<Result<bool>> updateListManiacPerkToTempCacheServiceNPDS() {
    return updateListModelToNamedServiceNPDS();
  }

  @protected
  @override
  Future<Result<bool>> updateListModelToNamedServiceNPDS()
  async {
    try {
      tempCacheService.insertOrUpdateObjectToTempCache(KeysTempCacheServiceUtility.maniacPerkQListManiacPerk,ReadyDataUtility.getListManiacPerk);
      return Result<bool>.success(true);
    } on LocalException catch(e) {
      return Result<bool>.exception(e);
    } catch(e) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}