import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';

final class DataForLoginViewQThereIsStreamStateViewModel<T extends DataForLoginView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForLoginViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?> get getStreamDataForLoginView {
    return getStreamDataForNamed;
  }

  T? get getDataForLoginView {
    return getDataForNamed;
  }

  void notifyStreamDataForLoginView() {
    notifyStreamDataForNamed();
  }
}