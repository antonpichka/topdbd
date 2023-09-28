import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForAntiDDosSystemView extends BaseInitializedNamedStreamStateQDataForNamed<DataForAntiDDosSystemView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForAntiDDosSystemView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForAntiDDosSystemView>(DataForAntiDDosSystemView(true,"",false,""));
}