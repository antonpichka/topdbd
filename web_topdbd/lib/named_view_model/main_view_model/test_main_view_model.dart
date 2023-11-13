import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';
import 'package:web_topdbd/named_view_model/main_view_model/i_main_view_model.dart';

@immutable
final class TestMainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>>
    implements IMainViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TestMainViewModel() : super(DefaultStreamWState(DataForMainView(true)));

  @override
  Future<String> init() async {
    getDataForNamedParameterNamedStreamWState.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }
}