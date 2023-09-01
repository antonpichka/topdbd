import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

final class InitializedDefaultStreamStateQDataForAntiDDosSystemView<T extends DataForAntiDDosSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForAntiDDosSystemView(true,"",false,"") as T);
}