import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/app_vm/data_for_app_view.dart';

void main() {
  final dataForAppView = DataForAppView(false,List.empty(growable: true),false,"","","#/user/{Vicar32}/stats");
  debugPrint(dataForAppView.getIdWhereSplitParameterNameRoute);
  // EXPECTED OUTPUT:
  //
  // Vicar32
  //
  // Process finished with exit code 0
}