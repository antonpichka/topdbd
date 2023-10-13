import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';

@immutable
final class DataForAntiDDosSystemViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForAntiDDosSystemView> {
  DataForAntiDDosSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForAntiDDosSystemView?> get getStreamDataForAntiDDosSystemView {
    return getStreamDataForNamed;
  }

  DataForAntiDDosSystemView? get getDataForAntiDDosSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForAntiDDosSystemView() {
    notifyStreamDataForNamed();
  }
}