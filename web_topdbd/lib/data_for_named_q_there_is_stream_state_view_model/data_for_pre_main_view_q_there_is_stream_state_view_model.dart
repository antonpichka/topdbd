import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_pre_main_view/data_for_pre_main_view.dart';

@immutable
final class DataForPreMainViewQThereIsStreamStateViewModel extends BaseDataForNamedQThereIsStreamStateViewModel<DataForPreMainView> {
  DataForPreMainViewQThereIsStreamStateViewModel(super.baseInitializedNamedStreamStateQDataForNamed);

  Stream<DataForPreMainView?> get getStreamDataForPreMainView {
    return getStreamDataForNamed;
  }

  DataForPreMainView? get getDataForPreMainView {
    return getDataForNamed;
  }

  void notifyStreamDataForPreMainView() {
    notifyStreamDataForNamed();
  }
}