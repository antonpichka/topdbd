import 'package:common_topdbd/named_test_main/matches_test_main.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:windows_topdbd/named_vm/app_vm/data_for_app_view.dart';
import 'package:windows_topdbd/named_vm/app_vm/i_app_view_model.dart';

@immutable
final class TestAppViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>>
    implements IAppViewModel
{
  TestAppViewModel() : super(DefaultStreamWState(DataForAppView(false)));

  @override
  Future<String> init() async {
    return KeysSuccessUtility.sUCCESS;
  }
}