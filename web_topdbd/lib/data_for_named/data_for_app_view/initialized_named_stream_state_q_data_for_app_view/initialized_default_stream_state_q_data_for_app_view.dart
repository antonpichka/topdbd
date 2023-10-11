import 'package:common_topdbd/model/user/user.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForAppView extends BaseInitializedNamedStreamStateQDataForNamed<DataForAppView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForAppView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForAppView>(DataForAppView(true,User("",DateTime.now()),false));
}