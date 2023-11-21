import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';

void main() {
  final dataForAppView = DataForAppView(false,List.empty(growable: true),false,"","","#/user/vicar32/stats");
  debugPrint(dataForAppView.getUrlWhereUserParameterNameRoute);
  debugPrint(dataForAppView.getIdWhereUserParameterNameRoute);
  // EXPECTED OUTPUT:
  //
  // #/user/id/stats
  // vicar32
  //
  // Process finished with exit code 0
}