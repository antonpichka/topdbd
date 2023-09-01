import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/asset_bundle_service.dart';

base class StringsQAssetBundleServiceViewModelUsingGetNPForTermsOfUse<T extends Strings,Y extends ListStrings<T>> extends BaseGetModelFromNamedServiceNPDataSource<T> {
  @protected
  final assetBundleService = AssetBundleService.instance;

  Future<T> getStringsFromAssetBundleServiceNPDS() {
    return getModelFromNamedServiceNPDS();
  }

  @protected
  @override
  Future<T> getModelFromNamedServiceNPDS()
  async {
    try {
      final result = await assetBundleService
          .getAssetBundle
          ?.loadString('assets/txt/terms_of_use_topdbd.txt');
      return Strings.success(result) as T;
    } catch(e) {
      return Strings.exception(LocalException(this, EnumGuiltyForLocalException.device,KeysExceptionUtility.uNKNOWN,e.toString())) as T;
    }
  }
}