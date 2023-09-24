import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/data_for_initialize_service_system_view.dart';

final class DataForInitializeServiceSystemViewQThereIsStreamStateViewModel<T extends DataForInitializeServiceSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForInitializeServiceSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForInitializeServiceSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForInitializeServiceSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForInitializeServiceSystemView() {
    notifyStreamDataForNamed();
  }
}