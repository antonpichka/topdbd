import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/data_for_topdbd_version_web_system_view.dart';

final class DataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel<T extends DataForTOPDBDVersionWebSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForTOPDBDVersionWebSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForTOPDBDVersionWebSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForTOPDBDVersionWebSystemView() {
    notifyStreamDataForNamed();
  }
}