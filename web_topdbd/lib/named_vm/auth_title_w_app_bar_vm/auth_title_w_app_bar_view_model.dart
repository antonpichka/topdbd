import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/data_for_auth_title_w_app_bar_view.dart';
import 'package:web_topdbd/named_vm/auth_title_w_app_bar_vm/i_auth_title_w_app_bar_view_model.dart';

@immutable
final class AuthTitleWAppBarViewModel extends BaseNamedViewModel<DataForAuthTitleWAppBarView,DefaultStreamWState<DataForAuthTitleWAppBarView>>
    implements IAuthTitleWAppBarViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  AuthTitleWAppBarViewModel() : super(DefaultStreamWState(DataForAuthTitleWAppBarView(true,"","")));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void clickOnMyUser(Function(String) callback) {
    // TODO: implement clickOnMyUser
  }

  @override
  void logout(Function() callback) {
    // TODO: implement logout
  }
}