import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForLoginView extends BaseInitializedNamedStreamStateQDataForNamed<DataForLoginView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForLoginView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForLoginView>(DataForLoginView(true,"",false));
}