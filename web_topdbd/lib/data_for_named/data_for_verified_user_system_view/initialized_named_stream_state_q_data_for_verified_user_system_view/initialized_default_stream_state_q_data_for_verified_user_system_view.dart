import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/data_for_verified_user_system_view.dart';

final class InitializedDefaultStreamStateQDataForVerifiedUserSystemView<T extends DataForVerifiedUserSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForVerifiedUserSystemView(true,false) as T);
}