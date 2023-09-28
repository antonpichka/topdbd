import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';

@immutable
final class DataForDefinedViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForDefinedView> {
  DataForDefinedViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForDefinedView?> get getStreamDataForDefinedView {
    return getStreamDataForNamed;
  }

  DataForDefinedView? get getDataForDefinedView {
    return getDataForNamed;
  }

  void notifyStreamDataForDefinedView() {
    notifyStreamDataForNamed();
  }
}