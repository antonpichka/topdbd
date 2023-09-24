import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/data_for_those_works_system_view.dart';

final class InitializedDefaultStreamStateQDataForThoseWorksSystemView<T extends DataForThoseWorksSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForThoseWorksSystemView(true,false) as T);
}