import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';

final class InitializedDefaultStreamStateQDataForLoginView<T extends DataForLoginView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForLoginView(true,"",false) as T);
}