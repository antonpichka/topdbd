import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_balance_vm/data_for_un_auth_navigation_balance_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_balance_vm/i_un_auth_navigation_balance_view_model.dart';

@immutable
final class UnAuthNavigationBalanceViewModel extends BaseNamedViewModel<DataForUnAuthNavigationBalanceView,
    DefaultStreamWState<DataForUnAuthNavigationBalanceView>> implements IUnAuthNavigationBalanceViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  UnAuthNavigationBalanceViewModel()
      : super(DefaultStreamWState(DataForUnAuthNavigationBalanceView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}
