import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/data_for_ip_address_firestore_system_view.dart';

final class DataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel<T extends DataForIPAddressFirestoreSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForIPAddressFirestoreSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForIPAddressFirestoreSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForIPAddressFirestoreSystemView() {
    notifyStreamDataForNamed();
  }
}