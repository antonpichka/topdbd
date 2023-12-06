import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/enum_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_vm/anti_ddos_system_vm/test_anti_ddos_system_view_model.dart';

final class AntiDDosSystemView extends StatefulWidget {
  @override
  State<AntiDDosSystemView> createState() => _AntiDDosSystemViewState();
}

final class _AntiDDosSystemViewState extends State<AntiDDosSystemView> {
  /// RELEASE CODE
  // late final AntiDDosSystemViewModel _viewModel;
  /// TEST CODE
  late final TestAntiDDosSystemViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = AntiDDosSystemViewModel();
    /// TEST CODE
    _viewModel = TestAntiDDosSystemViewModel();
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
    final value = ResponsiveValue<Widget>(context,
        conditionalValues: [
          Condition.equals(
              name: MOBILE,
              value: _getWidgetWhereFormFromSixParameterViewModel(
                  context,
                  dataForNamedParameterNamedStreamWState,
                  200,
                  18,
                  18,
                  60)),
          Condition.equals(
              name: TABLET,
              value: _getWidgetWhereFormFromSixParameterViewModel(
                  context,
                  dataForNamedParameterNamedStreamWState,
                  300,
                  24,
                  24,
                  70)),
          Condition.equals(
              name: DESKTOP,
              value: _getWidgetWhereFormFromSixParameterViewModel(
                  context,
                  dataForNamedParameterNamedStreamWState,
                  400,
                  40,
                  40,
                  200)),
        ]).value ?? Container();
    switch (dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForAntiDDosSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAntiDDosSystemView.exception:
        return Scaffold(
            body: Center(
                child: Text(
                    "Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}")));
      case EnumDataForAntiDDosSystemView.form:
        return value;
      case EnumDataForAntiDDosSystemView.success:
        return Container();
      default:
        return Container();
    }
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("AntiDDosSystemView: $result");
    if (!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }

  Widget _getWidgetWhereFormFromSixParameterViewModel(
      BuildContext context,
      DataForAntiDDosSystemView dataForNamedParameterNamedStreamWState,
      double sizedBoxWidth,
      double textSize,
      double textButtonSize,
      double inputDecorationMaxHeight) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: sizedBoxWidth,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      dataForNamedParameterNamedStreamWState.code,
                      style: TextStyle(
                        fontSize: textSize,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.8,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        initialValue:
                        dataForNamedParameterNamedStreamWState.inputCode,
                        maxLength: 8,
                        decoration: InputDecoration(
                          constraints: BoxConstraints(
                              maxHeight: inputDecorationMaxHeight),
                          border: const UnderlineInputBorder(),
                          labelText: 'Input Code',
                          labelStyle: TextStyle(
                              color: Theme.of(context).colorScheme.secondary),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                        ),
                        cursorColor: Theme.of(context).colorScheme.secondary,
                        style: Theme.of(context).textTheme.bodyLarge,
                        onChanged: (String text) {
                          _viewModel.setInputCode(text);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _viewModel.clickButtonDone(() {},
                                (String msg) {
                              showTopSnackBar(
                                Overlay.of(context),
                                CustomSnackBar.error(
                                  message: msg,
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        Theme.of(context).colorScheme.secondary,
                        foregroundColor:
                        Theme.of(context).textTheme.bodyMedium?.color,
                      ),
                      child: Text(
                        "Done",
                        style: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                          fontSize: textButtonSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}