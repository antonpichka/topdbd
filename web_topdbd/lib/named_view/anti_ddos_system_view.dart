import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_system_view/enum_data_for_anti_ddos_system_view.dart';
import 'package:web_topdbd/named_utility/navigation_utility.dart';
import 'package:web_topdbd/named_view/initialize_service_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/anti_ddos_system_view_list_view_model.dart';

final class AntiDDosSystemView extends StatefulWidget {
  final NavigationUtility navigationUtility;

  const AntiDDosSystemView(this.navigationUtility);

  @override
  State<AntiDDosSystemView> createState() => _AntiDDosSystemViewState();
}

final class _AntiDDosSystemViewState extends State<AntiDDosSystemView> {
  late final AntiDDosSystemViewListViewModel _antiDDosSystemViewListViewModel;

  @override
  void initState() {
    _antiDDosSystemViewListViewModel = AntiDDosSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _antiDDosSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForAntiDDosSystemView = _antiDDosSystemViewListViewModel.getDataForAntiDDosSystemView;
    final rvWidgetForm = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildForm(context,dataForAntiDDosSystemView,300,24,24,70)),
          Condition.largerThan(name: TABLET, value: _buildForm(context,dataForAntiDDosSystemView,400,40,40,200)),
          Condition.smallerThan(name: TABLET, value: _buildForm(context,dataForAntiDDosSystemView,200,18,18,60))
        ]
    ).value;
    switch(dataForAntiDDosSystemView?.getEnumDataForAntiDDosSystemView) {
      case EnumDataForAntiDDosSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAntiDDosSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForAntiDDosSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForAntiDDosSystemView.form:
        return rvWidgetForm!;
      case EnumDataForAntiDDosSystemView.success:
        return InitializeServiceSystemView(widget.navigationUtility);
      default:
        return Container();
    }
  }

  Widget _buildForm(BuildContext context,DataForAntiDDosSystemView? dataForAntiDDosSystemView,double sizedBoxWidth,double textSize,double textButtonSize,double inputDecorationMaxHeight) {
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
                        dataForAntiDDosSystemView?.code ?? "",
                        style: TextStyle(
                          fontSize: textSize,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.8,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(
                          initialValue: dataForAntiDDosSystemView?.inputCode ?? "",
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
                            _antiDDosSystemViewListViewModel
                                .setInputCodeForAntiDDosSystemView(text);
                            },
                        ),
                      ),
                      const SizedBox(height: 5,),
                      ElevatedButton(
                        onPressed: () {
                          _antiDDosSystemViewListViewModel.clickButtonDoneForAntiDDosSystemView(() {

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

  void _init() {
    _antiDDosSystemViewListViewModel
        .getStreamDataForAntiDDosSystemView
        .listen((event) {
          setState(() {});
        });
    final result = _antiDDosSystemViewListViewModel.initForAntiDDosSystemView();
    debugPrint("AntiDDosSystemView: $result");
    if(!mounted) {
      return;
    }
    _antiDDosSystemViewListViewModel.notifyStreamDataForAntiDDosSystemView();
  }

}