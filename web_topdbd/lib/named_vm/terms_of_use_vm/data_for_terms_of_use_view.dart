import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/enum_data_for_terms_of_use_view.dart';

final class DataForTermsOfUseView extends BaseDataForNamed<EnumDataForTermsOfUseView> {
  String termsOfUse;

  DataForTermsOfUseView(super.isLoading,this.termsOfUse);

  @override
  EnumDataForTermsOfUseView get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForTermsOfUseView.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForTermsOfUseView.exception;
    }
    return EnumDataForTermsOfUseView.success;
  }
}