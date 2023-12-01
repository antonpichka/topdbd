import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/data_for_auth_drawer_view.dart';
import 'package:web_topdbd/named_vm/auth_drawer_vm/i_auth_drawer_view_model.dart';

@immutable
final class AuthDrawerViewModel extends BaseNamedViewModel<DataForAuthDrawerView,DefaultStreamWState<DataForAuthDrawerView>>
    implements IAuthDrawerViewModel
{
  AuthDrawerViewModel() : super(DefaultStreamWState(DataForAuthDrawerView(true,"WWwwwwQwwwwWwwwwwwqqwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq","UA")));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}