import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/data_for_those_works_system_view.dart';

final class DataForThoseWorksSystemViewQThereIsStreamStateViewModel<T extends DataForThoseWorksSystemView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForThoseWorksSystemViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForThoseWorksSystemView {
    return getStreamDataForNamed;
  }

  T? get getDataForThoseWorksSystemView {
    return getDataForNamed;
  }

  void notifyStreamDataForThoseWorksSystemView() {
    notifyStreamDataForNamed();
  }
}