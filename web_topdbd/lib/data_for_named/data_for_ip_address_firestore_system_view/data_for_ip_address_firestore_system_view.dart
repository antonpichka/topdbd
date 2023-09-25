import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/enum_data_for_ip_address_firestore_system_view.dart';

final class DataForIPAddressFirestoreSystemView extends BaseDataForNamed {
  bool isHack;

  DataForIPAddressFirestoreSystemView(super.isLoading,this.isHack);

  EnumDataForIPAddressFirestoreSystemView get getEnumDataForIPAddressFirestoreSystemView {
    if(isLoading) {
      return EnumDataForIPAddressFirestoreSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForIPAddressFirestoreSystemView.exception;
    }
    if(isHack) {
      return EnumDataForIPAddressFirestoreSystemView.isHack;
    }
    return EnumDataForIPAddressFirestoreSystemView.success;
  }
}
