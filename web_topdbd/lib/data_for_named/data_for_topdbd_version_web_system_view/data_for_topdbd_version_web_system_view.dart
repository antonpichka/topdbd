import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/enum_data_for_topdbd_version_web_system_view.dart';

final class DataForTOPDBDVersionWebSystemView extends BaseDataForNamed {
  bool isValidVersionTOPDBDVersionWeb;
  String versionByTOPDBDVersionWeb;

  DataForTOPDBDVersionWebSystemView(super.isLoading,this.isValidVersionTOPDBDVersionWeb,this.versionByTOPDBDVersionWeb);

  EnumDataForTOPDBDVersionWebSystemView get getEnumDataForTOPDBDVersionWebSystemView {
    if(isLoading) {
      return EnumDataForTOPDBDVersionWebSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForTOPDBDVersionWebSystemView.exception;
    }
    if(isNotParameterIsValidVersionTOPDBDVersionWeb()) {
      return EnumDataForTOPDBDVersionWebSystemView.isNotValidVersionTOPDBDVersionWeb;
    }
    return EnumDataForTOPDBDVersionWebSystemView.success;
  }

  bool isNotParameterIsValidVersionTOPDBDVersionWeb() {
    return !isValidVersionTOPDBDVersionWeb;
  }
}