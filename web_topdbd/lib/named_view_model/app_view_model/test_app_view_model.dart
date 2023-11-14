import 'package:common_topdbd/named_test_main/matches_test_main.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';
import 'package:web_topdbd/named_view_model/app_view_model/i_app_view_model.dart';

@immutable
final class TestAppViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>>
    implements IAppViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TestAppViewModel() : super(DefaultStreamWState(DataForAppView(false,List<bool>.of([true,true]),false,"")));

  @override
  Future<String> init() async {
    return KeysSuccessUtility.sUCCESS;
  }

  @override
  void listeningStreamsFirebaseFirestoreService() {
  }

  @override
  void listeningStreamsTempCacheService() {
  }

  @override
  void notifyStreamDataForAppView() {
    notifyStreamDataForNamedParameterNamedStreamWState();
  }

}