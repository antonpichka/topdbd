import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';

void main() {
  final dataForAppView = DataForAppView(false,List.empty(growable: true),false,"","",false,"#/user/vicar32/stats");
  debugPrint(dataForAppView.getUrlWhereUserParameterNameRoute);
  debugPrint(dataForAppView.getIdWhereUserParameterNameRoute);
  final dataForAppViewFIRST = DataForAppView(false,List.empty(growable: true),false,"","",false,"#/search_players?q=vicar32q");
  debugPrint(dataForAppViewFIRST.getUrlWhereSearchPlayersParameterNameRoute);
  debugPrint(dataForAppViewFIRST.getIdWhereSearchPlayersParameterNameRoute);
  final dataForAppViewSECOND = DataForAppView(false,List.empty(growable: true),false,"","",false,"#/balance/settings");
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