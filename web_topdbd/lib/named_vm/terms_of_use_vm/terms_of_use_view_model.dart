import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/data_for_terms_of_use_view.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/i_terms_of_use_view_model.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_asset_bundle_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_asset_bundle_service/get_ee_strings_ee_where_terms_of_use_ee_parameter_asset_bundle_service.dart';

@immutable
final class TermsOfUseViewModel extends BaseNamedViewModel<DataForTermsOfUseView,DefaultStreamWState<DataForTermsOfUseView>>
    implements ITermsOfUseViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEStringsEEWhereTermsOfUseEEParameterAssetBundleService =
  GetEEStringsEEWhereTermsOfUseEEParameterAssetBundleService();

  // NamedUtility

  TermsOfUseViewModel() : super(DefaultStreamWState(DataForTermsOfUseView(true,"")));

  @override
  Future<String> init() async {
    final getStringsWhereTermsOfUseParameterAssetBundleService = await _getEEStringsEEWhereTermsOfUseEEParameterAssetBundleService
        .getStringsWhereTermsOfUseParameterAssetBundleService();
    if(getStringsWhereTermsOfUseParameterAssetBundleService
        .exceptionController
        .isWhereNotEqualsNullParameterException())
    {
      return _firstQQInitQQGetStringsWhereTermsOfUseParameterAssetBundleService(getStringsWhereTermsOfUseParameterAssetBundleService.exceptionController);
    }
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    getDataForNamedParameterNamedStreamWState.termsOfUse = getStringsWhereTermsOfUseParameterAssetBundleService.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  Future<String> _firstQQInitQQGetStringsWhereTermsOfUseParameterAssetBundleService(ExceptionController exceptionController) async {
    getDataForNamedParameterNamedStreamWState.exceptionController = exceptionController;
    return getDataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException;
  }
}