import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/enum_data_for_terms_of_use_view.dart';
import 'package:web_topdbd/named_vm/terms_of_use_vm/test_terms_of_use_view_model.dart';

final class TermsOfUseView extends StatefulWidget {
  @override
  State<TermsOfUseView> createState() => _TermsOfUseViewState();
}

final class _TermsOfUseViewState extends State<TermsOfUseView> {
  /// RELEASE CODE
  // late final TermsOfUseViewModel _viewModel;
  /// TEST CODE
  late final TestTermsOfUseViewModel _viewModel;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = TermsOfUseViewModel();
    /// TEST CODE
    _viewModel = TestTermsOfUseViewModel();
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
    final value = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 280),
          Condition.equals(name: TABLET, value: 330),
          Condition.equals(name: DESKTOP, value: 400),
        ]
    ).value ?? 0.0;
    final dataForNamedParameterNamedStreamWState = _viewModel.getDataForNamedParameterNamedStreamWState;
    switch(dataForNamedParameterNamedStreamWState.getEnumDataForNamed) {
      case EnumDataForTermsOfUseView.isLoading:
        return const Center(child: CircularProgressIndicator());
      case EnumDataForTermsOfUseView.exception:
        return Center(child: Text("Exception: ${dataForNamedParameterNamedStreamWState.exceptionController.getKeyParameterException}"));
      case EnumDataForTermsOfUseView.success:
        return Center(
          child: SizedBox(
            width: value,
            child: Card(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(dataForNamedParameterNamedStreamWState.termsOfUse),
                  ),
                  const SizedBox(height: 5,),
                ],),),),);
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
    debugPrint("TermsOfUseView: $result");
    if(!mounted) {
      return;
    }
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}