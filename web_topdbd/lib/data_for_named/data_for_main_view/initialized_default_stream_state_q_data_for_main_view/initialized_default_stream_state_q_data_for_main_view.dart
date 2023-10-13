import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_main_view/data_for_main_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForMainView extends BaseInitializedNamedStreamStateQDataForNamed<DataForMainView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForMainView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForMainView>(DataForMainView(true,false,false));
}