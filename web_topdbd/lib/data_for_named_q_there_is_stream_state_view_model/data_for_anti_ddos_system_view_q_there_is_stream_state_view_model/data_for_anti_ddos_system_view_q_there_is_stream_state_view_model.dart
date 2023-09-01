import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

final class DataForAntiDDosSystemViewQThereIsStreamStateViewModel<T extends DataForAntiDDosSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForAntiDDosSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?>? get getStreamDataForAntiDDosSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForAntiDDosSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForAntiDDosSystemView() {
    notifyStreamDataForNamed();
  }
}