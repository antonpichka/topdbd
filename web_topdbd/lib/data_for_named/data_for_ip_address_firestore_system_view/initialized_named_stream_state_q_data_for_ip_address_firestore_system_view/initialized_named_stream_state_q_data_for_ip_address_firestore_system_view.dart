import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/data_for_ip_address_firestore_system_view.dart';

final class InitializedDefaultStreamStateQDataForIPAddressFirestoreSystemView<T extends DataForIPAddressFirestoreSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForIPAddressFirestoreSystemView(true,false) as T);
}