import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  List<bool> listLoaded;
  bool isThoseWorks;
  String uniqueIdByUser;

  DataForAppView(super.isLoading,this.listLoaded,this.isThoseWorks,this.uniqueIdByUser);

  @override
  EnumDataForAppView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAppView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(isWhereLengthSmallerThanTwoParameterListLoaded()) {
      return EnumDataForAppView.isLoading;
    }
    if(isThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(uniqueIdByUser.isNotEmpty) {
      return EnumDataForAppView.authMainView;
    }
    return EnumDataForAppView.mainView;
  }

  void insertWhereLengthMoreThanOrEqualTwoParameterListLoaded() {
    if(listLoaded.length >= 2) {
      return;
    }
    listLoaded.add(true);
  }

  bool isWhereLengthSmallerThanTwoParameterListLoaded() {
    return listLoaded.length < 2;
  }
}