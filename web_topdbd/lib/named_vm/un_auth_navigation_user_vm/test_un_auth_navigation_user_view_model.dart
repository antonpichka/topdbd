import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/data_for_un_auth_navigation_user_view.dart';
import 'package:web_topdbd/named_vm/un_auth_navigation_user_vm/i_un_auth_navigation_user_view_model.dart';

@immutable
final class TestUnAuthNavigationUserViewModel extends BaseNamedViewModel<DataForUnAuthNavigationUserView, DefaultStreamWState<DataForUnAuthNavigationUserView>>
    implements IUnAuthNavigationUserViewModel
{
  TestUnAuthNavigationUserViewModel(String usernameByDiscordUser) : super(DefaultStreamWState(DataForUnAuthNavigationUserView(true,usernameByDiscordUser)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}