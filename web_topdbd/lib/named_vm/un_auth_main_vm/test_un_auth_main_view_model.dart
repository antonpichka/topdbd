import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/data_for_un_auth_main_view.dart';
import 'package:web_topdbd/named_vm/un_auth_main_vm/i_un_auth_main_view_model.dart';

@immutable
final class TestUnAuthMainViewModel extends BaseNamedViewModel<DataForUnAuthMainView,DefaultStreamWState<DataForUnAuthMainView>>
    implements IUnAuthMainViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TestUnAuthMainViewModel() : super(DefaultStreamWState(DataForUnAuthMainView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}