import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/data_for_topdbd_version_web_system_view.dart';

final class InitializedDefaultStreamStateQDataForTOPDBDVersionWebSystemView<T extends DataForTOPDBDVersionWebSystemView> extends BaseInitializedNamedStreamStateQDataForNamed<T> {
  @override
  BaseNamedStreamStateQDataForNamed<T> get getNamedStreamStateQDataForNamed =>
      DefaultStreamStateQDataForNamed<T>(DataForTOPDBDVersionWebSystemView(true,false,"") as T);
}