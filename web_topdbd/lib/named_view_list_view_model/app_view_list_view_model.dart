import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:web_topdbd/named_utility/singleton_data_for_named_q_there_is_stream_state_view_model_utility.dart';

final class AppViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForDefinedViewQThereIsStreamStateViewModel =
      SingletonDataForNamedQThereIsStreamStateViewModelUtility.instanceForDataForDefinedViewQThereIsStreamStateViewModel;

  // NamedUtility

  @override
  void dispose() {
    _dataForDefinedViewQThereIsStreamStateViewModel.dispose();
  }
}