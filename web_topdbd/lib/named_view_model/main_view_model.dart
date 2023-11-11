import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';

@immutable
final class MainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>> {
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  MainViewModel() : super(DefaultStreamWState(DataForMainView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}