import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_navigation_balance_vm/data_for_auth_navigation_balance_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_balance_vm/i_auth_navigation_balance_view_model.dart';

@immutable
final class AuthNavigationBalanceViewModel extends BaseNamedViewModel<DataForAuthNavigationBalanceView,
    DefaultStreamWState<DataForAuthNavigationBalanceView>> implements IAuthNavigationBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  AuthNavigationBalanceViewModel(bool isAdminByRoleUser)
      : super(DefaultStreamWState(DataForAuthNavigationBalanceView(true,isAdminByRoleUser)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}