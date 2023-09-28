import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/data_for_initialize_service_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_initialize_service_system_view/initialized_named_stream_state_q_data_for_initialize_service_system_view/initialized_default_stream_state_q_data_for_initialize_service_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_initialize_service_system_view_q_there_is_stream_state_view_model/data_for_initialize_service_system_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/named_utility/initialize_service_utility.dart';

@immutable
final class InitializeServiceSystemViewListViewModel extends BaseNamedViewListViewModel {
  // DataForNamedQThereIsStreamStateViewModel
  final _dataForInitializeServiceSystemViewQThereIsStreamStateViewModel =
  DataForInitializeServiceSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForInitializeServiceSystemView());

  @override
  void dispose() {
    _dataForInitializeServiceSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForInitializeServiceSystemView?> get getStreamDataForInitializeServiceSystemView => _dataForInitializeServiceSystemViewQThereIsStreamStateViewModel.getStreamDataForInitializeServiceSystemView;
  DataForInitializeServiceSystemView? get getDataForInitializeServiceSystemView => _dataForInitializeServiceSystemViewQThereIsStreamStateViewModel.getDataForInitializeServiceSystemView;

  Future<String> initForInitializeServiceSystemView()
  async {
    final result = await InitializeServiceUtility.init();
    _dataForInitializeServiceSystemViewQThereIsStreamStateViewModel
        .getDataForInitializeServiceSystemView
        ?.isLoading = false;
    return result;
  }

  void notifyStreamDataForInitializeServiceSystemView() {
    _dataForInitializeServiceSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForInitializeServiceSystemView();
  }
}