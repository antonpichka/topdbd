import 'package:common_topdbd/named_utility/keys_exception_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_service/asset_bundle_service.dart';

@immutable
base class GetEEStringsEEWhereTermsOfUseEEParameterAssetBundleService<T extends Strings,Y extends ListStrings<T>> {
  @protected
  final assetBundleService = AssetBundleService.instance;

  Future<Result<T>> getStringsWhereTermsOfUseParameterAssetBundleService()
  async {
    try {
      final result = await assetBundleService
          .getParameterAssetBundle
          ?.loadString('assets/txt/terms_of_use_topdbd.txt');
      return Result.success(Strings(result ?? "") as T);
    } catch(e) {
      return Result.exception(LocalException(this, EnumGuilty.device,KeysExceptionUtility.uNKNOWN,e.toString()));
    }
  }
}