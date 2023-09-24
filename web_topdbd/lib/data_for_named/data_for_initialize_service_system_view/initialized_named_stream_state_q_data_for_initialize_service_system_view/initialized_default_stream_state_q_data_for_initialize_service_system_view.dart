import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/data_for_initialize_service_system_view.dart';

final class InitializedDefaultStreamStateQDataForInitializeServiceSystemView<T extends DataForInitializeServiceSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForInitializeServiceSystemView(true) as T);
}