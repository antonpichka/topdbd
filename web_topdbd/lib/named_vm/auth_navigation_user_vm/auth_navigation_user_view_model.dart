import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_navigation_user_vm/data_for_auth_navigation_user_view.dart';

@immutable
final class AuthNavigationUserViewModel extends BaseNamedViewModel<DataForAuthNavigationUserView,DefaultStreamWState<DataForAuthNavigationUserView>> {
  AuthNavigationUserViewModel() : super(DefaultStreamWState(DataForAuthNavigationUserView(true,"",false)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}