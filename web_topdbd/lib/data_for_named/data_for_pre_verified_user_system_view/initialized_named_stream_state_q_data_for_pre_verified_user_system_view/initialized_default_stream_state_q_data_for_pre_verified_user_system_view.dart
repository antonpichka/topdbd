import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_verified_user_system_view/data_for_pre_verified_user_system_view.dart';

final class InitializedDefaultStreamStateQDataForPreVerifiedUserSystemView<T extends DataForPreVerifiedUserSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForPreVerifiedUserSystemView(true,"") as T);
}