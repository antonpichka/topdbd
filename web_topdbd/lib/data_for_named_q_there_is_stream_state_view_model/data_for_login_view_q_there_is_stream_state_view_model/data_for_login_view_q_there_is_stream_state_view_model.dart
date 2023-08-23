import 'package:library_architecture_mvvm_modify/base_data_for_named_q_there_is_stream_state_view_model/base_data_for_named_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_login_view/data_for_login_view.dart';

final class DataForLoginViewQThereIsStreamStateViewModel<T extends DataForLoginView>
    extends BaseDataForNamedQThereIsStreamStateViewModel<T>
{
  DataForLoginViewQThereIsStreamStateViewModel(super.iInitializedStreamStateDataForNamed);

  Stream<T?>? get getStreamDataForLoginView {
    return getStreamDataForNamed;
  }

  T? get getDataForLoginView {
    return getDataForNamed;
  }

  void notifyStreamDataForLoginView() {
    notifyStreamDataForNamed();
  }
}