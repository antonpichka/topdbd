import 'package:common_topdbd/model/uibu_w_ubdu/uibu_w_ubdu.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';

void main() {
  final dataForAppView = DataForAppView(true,"#/user/vicar32/stats",UIBUWUBDU("","",false,false,DateTime(0),false),DateTime.now());
  debugPrint(dataForAppView.getUrlWhereUserParameterNameRoute);
  debugPrint(dataForAppView.getIdWhereUserParameterNameRoute);
  final dataForAppViewFIRST = DataForAppView(true,"#/search_players?q=vicar32q",UIBUWUBDU("","",false,false,DateTime(0),false),DateTime.now());
  debugPrint(dataForAppViewFIRST.getUrlWhereSearchPlayersParameterNameRoute);
  debugPrint(dataForAppViewFIRST.getIdWhereSearchPlayersParameterNameRoute);
  final dataForAppViewSECOND = DataForAppView(true,"#/balance/settings",UIBUWUBDU("","",false,false,DateTime(0),false),DateTime.now());
  debugPrint(dataForAppViewSECOND.getSuffixUrlWhereBalanceParameterNameRoute);
  // EXPECTED OUTPUT:
  //
  // #/user/id/stats
  // vicar32
  // #/search_players?q=id
  // vicar32q
  // settings
  //
  // Process finished with exit code 0
}