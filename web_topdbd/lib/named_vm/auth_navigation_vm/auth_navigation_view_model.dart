import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/data_for_auth_navigation_view.dart';
import 'package:web_topdbd/named_vm/auth_navigation_vm/i_auth_navigation_view_model.dart';

@immutable
final class AuthNavigationViewModel extends BaseNamedViewModel<DataForAuthNavigationView,DefaultStreamWState<DataForAuthNavigationView>>
    implements IAuthNavigationViewModel
{
  AuthNavigationViewModel() : super(DefaultStreamWState(DataForAuthNavigationView(true,true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

}