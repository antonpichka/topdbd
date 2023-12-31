import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/data_for_auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/i_auth_drawer_view_model.dart';

@immutable
final class AuthDrawerViewModel extends BaseNamedViewModel<DataForAuthDrawerView,DefaultStreamWState<DataForAuthDrawerView>>
    implements IAuthDrawerViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  AuthDrawerViewModel() : super(DefaultStreamWState(DataForAuthDrawerView(true,"","")));

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
  void download() {
    // TODO: implement logout
  }

  @override
  void logout(Function() callback) {
    // TODO: implement logout
  }
}