import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/auth_main_vm/enum_data_for_auth_main_view.dart';

final class DataForAuthMainView extends BaseDataForNamed<EnumDataForAuthMainView> {
  bool isNotVerifiedUserByVerifiedUser;
  bool isHackedBySecurity;

  DataForAuthMainView(super.isLoading,this.isNotVerifiedUserByVerifiedUser,this.isHackedBySecurity);

  @override
  EnumDataForAuthMainView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForAuthMainView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForAuthMainView.exception;
    }
    if(isNotVerifiedUserByVerifiedUser) {
      return EnumDataForAuthMainView.notVerifiedUser;
    }
    if(isHackedBySecurity) {
      return EnumDataForAuthMainView.hacked;
    }
    return EnumDataForAuthMainView.success;
  }
}