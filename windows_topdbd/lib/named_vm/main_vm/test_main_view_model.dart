import 'package:common_topdbd/named_test_main/matches_test_main.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:windows_topdbd/named_vm/main_vm/data_for_main_view.dart';
import 'package:windows_topdbd/named_vm/main_vm/i_main_view_model.dart';

@immutable
final class TestMainViewModel extends BaseNamedViewModel<DataForMainView,DefaultStreamWState<DataForMainView>>
    implements IMainViewModel
{
  TestMainViewModel() : super(DefaultStreamWState(DataForMainView(false)));

  @override
  Future<String> init() async {
    return KeysSuccessUtility.sUCCESS;
  }
}