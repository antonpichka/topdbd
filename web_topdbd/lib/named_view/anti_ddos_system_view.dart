import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/enum_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_view_q_view_model/anti_ddos_system_view_q_view_model.dart';

final class AntiDDosSystemView extends StatefulWidget {
  @override
  State<AntiDDosSystemView> createState() => _AntiDDosSystemViewState();
}

final class _AntiDDosSystemViewState extends State<AntiDDosSystemView> {
  late final AntiDDosSystemViewQViewModel _antiDDosSystemViewQViewModel;

  @override
  void initState() {
    _antiDDosSystemViewQViewModel = AntiDDosSystemViewQViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _antiDDosSystemViewQViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForNamed = _antiDDosSystemViewQViewModel.getDataForNamed;
    final rvWidgetForm = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _buildForm(context,dataForNamed,200,18,18,60)),
          Condition.equals(name: TABLET, value: _buildForm(context,dataForNamed,300,24,24,70)),
          Condition.equals(name: DESKTOP, value: _buildForm(context,dataForNamed,400,40,40,200)),
        ]
    ).value ?? Container();
    switch(dataForNamed.getEnumDataForNamed) {
      case EnumDataForAntiDDosSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAntiDDosSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForNamed.exceptionController.getKeyParameterException}")));
      case EnumDataForAntiDDosSystemView.form:
        return rvWidgetForm;
      case EnumDataForAntiDDosSystemView.success:
        return Container();
      default:
        return Container();
    }
  }

  Widget _buildForm(BuildContext context,DataForAntiDDosSystemView dataForAntiDDosSystemView,double sizedBoxWidth,double textSize,double textButtonSize,double inputDecorationMaxHeight) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: sizedBoxWidth,
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        dataForAntiDDosSystemView.code,
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          initialValue: dataForAntiDDosSystemView.inputCode,
                          maxLength: 8,
                          decoration: InputDecoration(
                            constraints: BoxConstraints(maxHeight: inputDecorationMaxHeight),
                            border: const UnderlineInputBorder(),
                            labelText: 'Input Code',
                            labelStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                          cursorColor: Theme.of(context).colorScheme.secondary,
                          style: Theme.of(context).textTheme.bodyLarge,
                          onChanged: (String text) {
                            _antiDDosSystemViewQViewModel
                                .setInputCode(text);
                            },
                        ),
                      ),
                      const SizedBox(height: 5,),
                      ElevatedButton(
                        onPressed: () {
                          _antiDDosSystemViewQViewModel.clickButtonDone(() {

                          },(messageException) {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(message: messageException,),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.secondary,
                          foregroundColor: Theme.of(context).textTheme.bodyMedium?.color,
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
                      const SizedBox(height: 5,),
                    ],
                  ),
                ),
              ),
            ]),
        ),
      ),
    );
  }

  Future<void> _init() async {
    _antiDDosSystemViewQViewModel
        .getStreamDataForNamed
        .listen((event) {
          setState(() {});
        });
    final result = await _antiDDosSystemViewQViewModel.init();
    debugPrint("AntiDDosSystemView: $result");
    if(!mounted) {
      return;
    }
    _antiDDosSystemViewQViewModel.notifyStreamDataForNamed();
  }

}