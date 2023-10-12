import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/initialized_named_stream_state_q_data_for_defined_view/initialized_default_stream_state_q_data_for_defined_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model/data_for_defined_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/named_utility/navigation_utility.dart';

@immutable
final class DefinedViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForDefinedViewQThereIsStreamStateViewModel =
  DataForDefinedViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForDefinedView());

  // NamedUtility

  DefinedViewListViewModel(NavigationUtility navigationUtility) {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.uniqueIdByUser = navigationUtility.uniqueIdByUser;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isPreSuccess = navigationUtility.isPreSuccess;
  }

  @override
  void dispose() {
    _dataForDefinedViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForDefinedView?> get getStreamDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getStreamDataForDefinedView;
  DataForDefinedView? get getDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getDataForDefinedView;

  Future<String> initForDefinedView()
  async {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForDefinedView() {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .notifyStreamDataForDefinedView();
  }
}