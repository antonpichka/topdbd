import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForDefinedView extends BaseInitializedNamedStreamStateQDataForNamed<DataForDefinedView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForDefinedView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForDefinedView>(DataForDefinedView(true,"",false));
}