import 'package:library_architecture_mvvm_modify/base_data_for_named_q_there_is_stream_state_view_model/base_data_for_named_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';

final class DataForDefinedViewQThereIsStreamStateViewModel<T extends DataForDefinedView>
    extends BaseDataForNamedQThereIsStreamStateViewModel<T>
{
  DataForDefinedViewQThereIsStreamStateViewModel(super.iInitializedStreamStateDataForNamed);

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