import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';

final class DataForDefinedViewQThereIsStreamStateViewModel<T extends DataForDefinedView> extends BaseDataForNamedQThereIsStreamStateViewModel<T> {
  DataForDefinedViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<T?>? get getStreamDataForDefinedView {
    return getStreamDataForNamed;
  }

  T? get getDataForDefinedView {
    return getDataForNamed;
  }

  void notifyStreamDataForDefinedView() {
    notifyStreamDataForNamed();
  }
}