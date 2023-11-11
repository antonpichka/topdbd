import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  bool isThoseWorks;
  String uniqueIdByUser;

  DataForAppView(super.isLoading,this.isThoseWorks,this.uniqueIdByUser);

  @override
  EnumDataForAppView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(isThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(uniqueIdByUser.isNotEmpty) {
      return EnumDataForAppView.authMainView;
    }
    return EnumDataForAppView.mainView;
  }
}