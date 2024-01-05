import 'package:flutter/material.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/enum_data_for_settings_save_changes_to_match_balance_view.dart';
import 'package:web_topdbd/named_vm/settings_save_changes_to_match_balance_vm/test_settings_save_changes_to_match_balance_view_model.dart';

final class SettingsSaveChangesToMatchBalanceView extends StatefulWidget {
  @override
  State<SettingsSaveChangesToMatchBalanceView> createState() => _SettingsSaveChangesToMatchBalanceViewState();
}

final class _SettingsSaveChangesToMatchBalanceViewState extends State<SettingsSaveChangesToMatchBalanceView> {
  /// RELEASE CODE
  // late final SettingsSaveChangesToMatchBalanceViewModel _viewModel;
  /// TEST CODE
  late final TestSettingsSaveChangesToMatchBalanceViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SettingsSaveChangesToMatchBalanceViewModel();
    /// TEST CODE
    _viewModel = TestSettingsSaveChangesToMatchBalanceViewModel();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamedParameterNamedStreamWState =
        _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForSettingsSaveChangesToMatchBalanceView.isLoading:
        return const Center(child: CircularProgressIndicator(),);
      case EnumDataForSettingsSaveChangesToMatchBalanceView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForSettingsSaveChangesToMatchBalanceView.disable:
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    Icon(Icons.save),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text("Save Changes"),
                    )
                  ],),
              ),
              dataForNamedParameterNamedStreamWState
                  .exceptionInString
                  .isNotEmpty
                  ? Text(dataForNamedParameterNamedStreamWState.exceptionInString)
                  : Container()
            ],
          ),
        );
      case EnumDataForSettingsSaveChangesToMatchBalanceView.success:
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    _viewModel.onPressedSaveChanges(
                            () {
                              showTopSnackBar(
                                Overlay.of(context),
                                const CustomSnackBar.success(
                                  message: "Successfully completed",
                                ),
                              );
                            },
                            (msg) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: msg,
                                ),
                              );
                            });
                  },
                  child: const Wrap(
                    children: [
                      Icon(Icons.save),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Text("Save Changes"),
                      )
                    ],),
                ),
              ),
              dataForNamedParameterNamedStreamWState
                  .exceptionInString
                  .isNotEmpty
                  ? Text(dataForNamedParameterNamedStreamWState.exceptionInString)
                  : Container()
            ],
          ),
        );
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    _viewModel.listeningTempCacheService();
    final result = await _viewModel.init();
    debugPrint("SettingsSaveChangesToMatchBalanceView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

}