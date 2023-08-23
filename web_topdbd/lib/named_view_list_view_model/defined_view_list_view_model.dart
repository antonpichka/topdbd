import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:web_topdbd/data_for_named/data_for_defined_view/data_for_defined_view.dart';
import 'package:web_topdbd/model_q_named_service_view_model/user_q_shared_preferences_service_view_model/user_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/model_q_named_service_view_model/verified_user_sp_q_shared_preferences_service_view_model/verified_user_sp_q_shared_preferences_service_view_model_using_get_np.dart';
import 'package:web_topdbd/named_utility/singleton_dfnqtissvm_utility.dart';

final class DefinedViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _userQSharedPreferencesServiceViewModelUsingGetNP =
  UserQSharedPreferencesServiceViewModelUsingGetNP();
  final _verifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP =
  VerifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForDefinedViewQThereIsStreamStateViewModel =
      SingletonDFNQTISSVMUtility.instanceForDataForDefinedViewQThereIsStreamStateViewModel;

  // NamedUtility

  @override
  void dispose() {}

  Stream<DataForDefinedView?>? get getStreamDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getStreamDataForDefinedView;
  DataForDefinedView? get getDataForDefinedView => _dataForDefinedViewQThereIsStreamStateViewModel.getDataForDefinedView;

  Future<String?> initForDefinedView()
  async {
    final resultUser = await _userQSharedPreferencesServiceViewModelUsingGetNP
        .getUserFromSharedPreferencesServiceNPDS();
    final resultVerifiedUserSP = await _verifiedUserSPQSharedPreferencesServiceViewModelUsingGetNP
        .getVerifiedUserSPFromSharedPreferencesServiceNPDS();
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.exceptionController = resultUser.exceptionController;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.uniqueIdByUser = resultUser.uniqueId;
    _dataForDefinedViewQThereIsStreamStateViewModel
        .getDataForDefinedView
        ?.isVerifiedUserByVerifiedUserSP = resultVerifiedUserSP.isVerifiedUser;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForDefinedView() {
    _dataForDefinedViewQThereIsStreamStateViewModel
        .notifyStreamDataForDefinedView();
  }
}