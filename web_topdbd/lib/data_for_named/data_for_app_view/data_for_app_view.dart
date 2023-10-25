import 'package:common_topdbd/model/init_stream/list_init_stream.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_data_for_app_view.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/enum_status_notify_list_init_stream.dart';

final class DataForAppView extends BaseDataForNamed<EnumDataForAppView> {
  final ListInitStream listInitStream;
  String otherException;
  EnumStatusNotifyListInitStream enumStatusNotifyListInitStream;
  bool isThoseWorks;
  bool isNotValidVersionTOPDBDVersionWeb;
  String versionByTOPDBDVersionWeb;
  String uniqueIdByUser;
  bool isNotVerifiedUserByVerifiedUser;
  bool isHackedBySecurity;

  DataForAppView(this.listInitStream,this.otherException,this.enumStatusNotifyListInitStream,this.isThoseWorks,this.isNotValidVersionTOPDBDVersionWeb,this.versionByTOPDBDVersionWeb,this.uniqueIdByUser,this.isNotVerifiedUserByVerifiedUser,this.isHackedBySecurity) : super(false);

  @override
  EnumDataForAppView get getEnumDataForNamed {
    if(exceptionController.isNotEqualsNullParameterException()) {
      return EnumDataForAppView.exception;
    }
    if(otherException.isNotEmpty) {
      return EnumDataForAppView.otherException;
    }
    if(listInitStream.isWhereNotInitStreamParameterListModel()) {
      return EnumDataForAppView.waitingInitStreams;
    }
    if(isThoseWorks) {
      return EnumDataForAppView.thoseWorks;
    }
    if(isNotValidVersionTOPDBDVersionWeb) {
      return EnumDataForAppView.isNotValidVersionTOPDBDVersionWeb;
    }
    if(uniqueIdByUser.isEmpty) {
      return EnumDataForAppView.login;
    }
    if(isNotVerifiedUserByVerifiedUser) {
      return EnumDataForAppView.isNotVerifiedUser;
    }
    if(isHackedBySecurity) {
      return EnumDataForAppView.isHacked;
    }
    return EnumDataForAppView.main;
  }

  bool isWhereTrueAndNotEqualsOneNotifyParametersListInitStreamAndEnumStatusNotifyListInitStream() {
    return listInitStream.isWhereInitStreamParameterListModel()
        && enumStatusNotifyListInitStream != EnumStatusNotifyListInitStream.oneNotify;
  }

  bool isWhereEqualsInfinityNotifyParameterEnumStatusNotifyListInitStream() {
    return enumStatusNotifyListInitStream == EnumStatusNotifyListInitStream.infinityNotify;
  }
}