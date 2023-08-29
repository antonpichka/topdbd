import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:common_topdbd/named_utility/keys_temp_cache_service_utility.dart';
import 'package:library_architecture_mvvm_modify/base_model/bools.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bools.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/i_get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/temp_cache_service.dart';

base class BoolsQTempCacheServiceViewModelUsingGetNPForIsVerifiedUserByVerifiedUserSP<T extends Bools,Y extends ListBools<T>>
    implements IGetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final tempCacheService = TempCacheService.instance;

  Future<T> getBoolsFromTempCacheServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final isVerifiedUserByVerifiedUserSP = tempCacheService.getObjectFromTempCache(KeysTempCacheServiceUtility.boolsQIsVerifiedUserByVerifiedUserSP) as bool;
      return Bools.success(isVerifiedUserByVerifiedUserSP) as T;
    } on LocalException catch(e) {
      return Bools.exception(e) as T;
    } catch(e) {
      return Bools.exception(LocalException(this,EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}