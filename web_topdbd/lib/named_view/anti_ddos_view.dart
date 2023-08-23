import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/data_for_anti_ddos_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/enum_data_for_anti_ddos_view.dart';
import 'package:web_topdbd/named_view/defined_view.dart';
import 'package:web_topdbd/named_view_list_view_model/anti_ddos_view_list_view_model.dart';

final class AntiDDosView
    extends StatefulWidget
{
  @override
  State<AntiDDosView> createState() => _AntiDDosViewState();
}

final class _AntiDDosViewState
    extends State<AntiDDosView>
{
  late final AntiDDosViewListViewModel _antiDDosViewListViewModel;

  @override
  void initState() {
    _antiDDosViewListViewModel = AntiDDosViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _antiDDosViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForAntiDDosView = _antiDDosViewListViewModel.getDataForAntiDDosView;
    final form = ResponsiveValue<Widget>(
        context,
        defaultValue: _buildForm(context,dataForAntiDDosView,300,24,24,70),
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildForm(context,dataForAntiDDosView,300,24,24,70)),
          Condition.largerThan(name: TABLET, value: _buildForm(context,dataForAntiDDosView,400,40,40,200)),
          Condition.smallerThan(name: TABLET, value: _buildForm(context,dataForAntiDDosView,200,18,18,60))
        ]
    ).value;
    switch(dataForAntiDDosView?.getEnumDataForAntiDDosView) {
      case EnumDataForAntiDDosView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAntiDDosView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForAntiDDosView?.exceptionController.getKeyParameterException}")));
      case EnumDataForAntiDDosView.form:
        return form!;
      case EnumDataForAntiDDosView.definedView:
        return DefinedView();
      default:
        return Container();
    }
  }

  Widget _buildForm(BuildContext context,DataForAntiDDosView? dataForAntiDDosView,double sizedBoxWidth,double textSize,double textButtonSize,double inputDecorationMaxHeight) {
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
                        dataForAntiDDosView?.code ?? "",
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          initialValue: dataForAntiDDosView?.inputCode ?? "",
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
                            _antiDDosViewListViewModel
                                .setInputCodeForAntiDDosView(text);
                            },
                        ),
                      ),
                      const SizedBox(height: 5,),
                      ElevatedButton(
                        onPressed: () {
                          _antiDDosViewListViewModel.clickButtonDoneForAntiDDosView((messageException) {
                            showTopSnackBar(
                              Overlay.of(context),
                              CustomSnackBar.error(message: messageException ?? "",),
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

  void _init() {
    _antiDDosViewListViewModel
        .getStreamDataForAntiDDosView
        ?.listen((event) {
          setState(() {});
        });
    final result = _antiDDosViewListViewModel.initForAntiDDosView();
    debugPrint(result);
    if(!mounted) {
      return;
    }
    _antiDDosViewListViewModel.notifyStreamDataForAntiDDosView();
  }

}