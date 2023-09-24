import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_app_view/data_for_app_view.dart';

final class DataForAppViewQThereIsStreamStateViewModel<T extends DataForAppView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForAppViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForAppView {
    return getStreamDataForNamed;
  }

  T? get getDataForAppView {
    return getDataForNamed;
  }

  void notifyStreamDataForAppView() {
    notifyStreamDataForNamed();
  }
}