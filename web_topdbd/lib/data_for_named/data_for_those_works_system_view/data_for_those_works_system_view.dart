import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/enum_data_for_those_works_system_view.dart';

final class DataForThoseWorksSystemView extends BaseDataForNamed {
  bool isThoseWorksByThoseWorks;

  DataForThoseWorksSystemView(super.isLoading,this.isThoseWorksByThoseWorks);

  EnumDataForThoseWorksSystemView get getEnumDataForThoseWorksSystemView {
    if(isLoading) {
      return EnumDataForThoseWorksSystemView.isLoading;
    }
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForThoseWorksSystemView.exception;
    }
    if(isThoseWorksByThoseWorks) {
      return EnumDataForThoseWorksSystemView.thoseWorks;
    }
    return EnumDataForThoseWorksSystemView.success;
  }
}