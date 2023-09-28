import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/data_for_topdbd_version_web_system_view.dart';

@immutable
final class DataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForTOPDBDVersionWebSystemView> {
  DataForTOPDBDVersionWebSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForTOPDBDVersionWebSystemView?> get getStreamDataForTOPDBDVersionWebSystemView {
    return getStreamDataForNamed;
  }

  DataForTOPDBDVersionWebSystemView? get getDataForTOPDBDVersionWebSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForTOPDBDVersionWebSystemView() {
    notifyStreamDataForNamed();
  }
}