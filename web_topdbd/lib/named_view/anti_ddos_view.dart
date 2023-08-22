import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/data_for_anti_ddos_view.dart';
import 'package:web_topdbd/data_for_named/data_for_anti_ddos_view/enum_data_for_anti_ddos_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
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
        defaultValue: _buildDefaultForm(context,dataForAntiDDosView,300,24,24),
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildDefaultForm(context,dataForAntiDDosView,300,24,24)),
          Condition.largerThan(name: TABLET, value: _buildDefaultForm(context,dataForAntiDDosView,400,40,40)),
          Condition.smallerThan(name: TABLET, value: _buildSmallForm(context,dataForAntiDDosView))
        ]
    ).value;
    switch(dataForAntiDDosView?.getEnumDataForAntiDDosView) {
      case EnumDataForAntiDDosView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForAntiDDosView.form:
        return form!;
      case EnumDataForAntiDDosView.mainView:
        return MainView();
      default:
        return Container();
    }
  }

  Widget _buildDefaultForm(BuildContext context,DataForAntiDDosView? dataForAntiDDosView,double? sizedBoxWidth,double? textSize,double? textButtonSize) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
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
                    _antiDDosViewListViewModel
                        .clickButtonDoneForAntiDDosView((messageException) => null);
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
      ),
    );
  }

  Widget _buildSmallForm(BuildContext context,DataForAntiDDosView? dataForAntiDDosView) {
    return const Row(
      children: [

      ],);
  }

  void _init() {
    _antiDDosViewListViewModel
        .getStreamDataForAntiDDosView
        ?.listen((event) {
          setState(() {});
        });
    if(!mounted) {
      return;
    }
    _antiDDosViewListViewModel.initForAntiDDosView();
  }

}