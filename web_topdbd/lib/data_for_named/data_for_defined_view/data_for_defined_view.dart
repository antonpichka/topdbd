import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/enum_data_for_defined_view.dart';

final class DataForDefinedView extends BaseDataForNamed {
  String uniqueIdByUser;
  bool isPreSuccess;

  DataForDefinedView(super.isLoading,this.uniqueIdByUser,this.isPreSuccess) : super();

  EnumDataForDefinedView get getEnumDataForDefinedView {
    if(isLoading) {
      return EnumDataForDefinedView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForDefinedView.exception;
    }
    if(uniqueIdByUser.isEmpty) {
      return EnumDataForDefinedView.login;
    }
    if(isPreSuccess) {
      return EnumDataForDefinedView.preSuccess;
    }
    return EnumDataForDefinedView.success;
  }
}