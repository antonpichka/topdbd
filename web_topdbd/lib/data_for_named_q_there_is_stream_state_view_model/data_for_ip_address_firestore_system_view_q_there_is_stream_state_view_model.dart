import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/data_for_ip_address_firestore_system_view.dart';

@immutable
final class DataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForIPAddressFirestoreSystemView> {
  DataForIPAddressFirestoreSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForIPAddressFirestoreSystemView?> get getStreamDataForIPAddressFirestoreSystemView {
    return getStreamDataForNamed;
  }

  DataForIPAddressFirestoreSystemView? get getDataForIPAddressFirestoreSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForIPAddressFirestoreSystemView() {
    notifyStreamDataForNamed();
  }
}