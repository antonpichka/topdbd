import 'package:common_topdbd/model/those_works/those_works.dart';
import 'package:common_topdbd/named_utility/keys_success_utility.dart';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/data_for_those_works_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/initialized_named_stream_state_q_data_for_those_works_system_view/initialized_default_stream_state_q_data_for_those_works_system_view.dart';
import 'package:web_topdbd/data_for_named_q_there_is_stream_state_view_model/data_for_those_works_system_view_q_there_is_stream_state_view_model/data_for_those_works_system_view_q_there_is_stream_state_view_model.dart';
import 'package:web_topdbd/model_q_named_service_view_model/model_q_firebase_firestore_service_view_model/those_works_q_firebase_firestore_service_view_model/those_works_q_firebase_firestore_service_view_model_using_custom_start_listening_and_cancel_listening.dart';

final class ThoseWorksSystemViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening =
  ThoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening();

  // DataForNamedQThereIsStreamStateViewModel
  final _dataForThoseWorksSystemViewQThereIsStreamStateViewModel =
  DataForThoseWorksSystemViewQThereIsStreamStateViewModel(InitializedDefaultStreamStateQDataForThoseWorksSystemView());

  @override
  void dispose() {
    _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening.cancelListening();
    _dataForThoseWorksSystemViewQThereIsStreamStateViewModel.dispose();
  }

  Stream<DataForThoseWorksSystemView?> get getStreamDataForThoseWorksSystemView => _dataForThoseWorksSystemViewQThereIsStreamStateViewModel.getStreamDataForThoseWorksSystemView;
  DataForThoseWorksSystemView? get getDataForThoseWorksSystemView => _dataForThoseWorksSystemViewQThereIsStreamStateViewModel.getDataForThoseWorksSystemView;

  void listeningStreamsFirebaseFirestoreServiceForThoseWorksSystemView() {
    _thoseWorksQFirebaseFirestoreServiceViewModelUsingCustomStartListeningAndCancelListening
        .startListening((Result<ThoseWorks> resultThoseWorks) {
          if(resultThoseWorks
              .exceptionController
              .isNotEqualsNullParameterException())
          {
            _dataForThoseWorksSystemViewQThereIsStreamStateViewModel
                .getDataForThoseWorksSystemView
                ?.exceptionController = resultThoseWorks.exceptionController;
            _dataForThoseWorksSystemViewQThereIsStreamStateViewModel
                .notifyStreamDataForThoseWorksSystemView();
            return;
          }
          _dataForThoseWorksSystemViewQThereIsStreamStateViewModel
              .getDataForThoseWorksSystemView
              ?.isThoseWorksByThoseWorks = resultThoseWorks.parameter?.isThoseWorks ?? false;
          _dataForThoseWorksSystemViewQThereIsStreamStateViewModel
              .notifyStreamDataForThoseWorksSystemView();
        });
  }

  String initForThoseWorksSystemView() {
    _dataForThoseWorksSystemViewQThereIsStreamStateViewModel
        .getDataForThoseWorksSystemView
        ?.isLoading = false;
    return KeysSuccessUtility.sUCCESS;
  }

  void notifyStreamDataForThoseWorksSystemView() {
    _dataForThoseWorksSystemViewQThereIsStreamStateViewModel
        .notifyStreamDataForThoseWorksSystemView();
  }
}