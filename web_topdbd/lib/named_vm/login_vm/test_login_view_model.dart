import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/login_vm/data_for_login_view.dart';
import 'package:web_topdbd/named_vm/login_vm/i_login_view_model.dart';
import 'package:web_topdbd/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_named_service/operation_ee_model_ee_where_named_ee_from_named_ee_parameter_asset_bundle_service/operation_ee_strings_ee_where_named_ee_from_named_ee_parameter_asset_bundle_service/get_ee_strings_ee_where_terms_of_use_ee_parameter_asset_bundle_service.dart';

@immutable
final class TestLoginViewModel extends BaseNamedViewModel<DataForLoginView,DefaultStreamWState<DataForLoginView>>
    implements ILoginViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  final _getEEStringsEEWhereTermsOfUseEEParameterAssetBundleService =
  GetEEStringsEEWhereTermsOfUseEEParameterAssetBundleService();

  // NamedUtility

  TestLoginViewModel() : super(DefaultStreamWState(DataForLoginView(true,"",false)));

  @override
  Future<String> init() async {
    final getStringsWhereTermsOfUseParameterAssetBundleService = await _getEEStringsEEWhereTermsOfUseEEParameterAssetBundleService
        .getStringsWhereTermsOfUseParameterAssetBundleService();
    getDataForNamedParameterNamedStreamWState
        .isLoading = false;
    getDataForNamedParameterNamedStreamWState
        .exceptionController = getStringsWhereTermsOfUseParameterAssetBundleService.exceptionController;
    getDataForNamedParameterNamedStreamWState
        .termsOfUse = getStringsWhereTermsOfUseParameterAssetBundleService.parameter?.field ?? "";
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void setCheckAgreeTermsOfUse(bool? isCheck) {
    getDataForNamedParameterNamedStreamWState.isCheckAgreeTermsOfUse = isCheck ?? false;
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

  @override
  Future<void> signInWithDiscord(Function(String) callbackException) async {
  }

}