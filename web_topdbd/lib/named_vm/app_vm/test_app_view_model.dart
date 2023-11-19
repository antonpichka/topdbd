import 'package:common_topdbd/named_utility/algorithms_utility.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';
import 'package:web_topdbd/named_vm/app_vm/i_app_view_model.dart';

@immutable
final class TestAppViewModel extends BaseNamedViewModel<DataForAppView,DefaultStreamWState<DataForAppView>>
    implements IAppViewModel
{
  // OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
  // NamedUtility

  TestAppViewModel() : super(DefaultStreamWState(DataForAppView(false,List<bool>.of([true,true]),false,"","","")));

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
  void setNameRoute(String rawNameRoute) {
    final stringWhereProcessedNameRouteFromRawNameRoute = AlgorithmsUtility.getStringWhereProcessedNameRouteFromRawNameRoute(rawNameRoute);
    getDataForNamedParameterNamedStreamWState.nameRoute = stringWhereProcessedNameRouteFromRawNameRoute;
  }

  @override
  void notifyStreamDataForAppView() {
    notifyStreamDataForNamedParameterNamedStreamWState();
  }
}