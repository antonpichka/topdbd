import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/data_for_those_works_system_view.dart';

@immutable
final class InitializedDefaultStreamStateQDataForThoseWorksSystemView extends BaseInitializedNamedStreamStateQDataForNamed<DataForThoseWorksSystemView> {
  @override
  BaseNamedStreamStateQDataForNamed<DataForThoseWorksSystemView> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<DataForThoseWorksSystemView>(DataForThoseWorksSystemView(true,false));
}