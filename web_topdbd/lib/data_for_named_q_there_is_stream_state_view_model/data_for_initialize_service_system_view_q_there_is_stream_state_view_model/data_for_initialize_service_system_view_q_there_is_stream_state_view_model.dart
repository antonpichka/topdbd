import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/data_for_initialize_service_system_view.dart';

@immutable
final class DataForInitializeServiceSystemViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForInitializeServiceSystemView> {
  DataForInitializeServiceSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForInitializeServiceSystemView?> get getStreamDataForInitializeServiceSystemView {
    return getStreamDataForNamed;
  }

  DataForInitializeServiceSystemView? get getDataForInitializeServiceSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForInitializeServiceSystemView() {
    notifyStreamDataForNamed();
  }
}