import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/data_for_auth_main_view.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/i_auth_main_view_model.dart';

@immutable
final class TestAuthMainViewModel extends BaseNamedViewModel<DataForAuthMainView,DefaultStreamWState<DataForAuthMainView>>
    implements IAuthMainViewModel
{
  TestAuthMainViewModel() : super(DefaultStreamWState(DataForAuthMainView(true,false,false)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  Future<void> listeningStreamsFirebaseFirestoreService() async {
  }
}