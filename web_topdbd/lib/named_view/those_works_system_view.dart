import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_those_works_system_view/enum_data_for_those_works_system_view.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_view/topdbd_version_web_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/those_works_system_view_list_view_model.dart';

final class ThoseWorksSystemView extends StatefulWidget {
  final EnumNavigationUtility enumNavigationUtility;

  const ThoseWorksSystemView(this.enumNavigationUtility);

  @override
  State<ThoseWorksSystemView> createState() => _ThoseWorksSystemViewState();
}

final class _ThoseWorksSystemViewState extends State<ThoseWorksSystemView> {
  late final ThoseWorksSystemViewListViewModel _thoseWorksSystemViewListViewModel;

  @override
  void initState() {
    _thoseWorksSystemViewListViewModel = ThoseWorksSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _thoseWorksSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rvWidgetThoseWorks = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildThoseWorks(context,300,24)),
          Condition.largerThan(name: TABLET, value: _buildThoseWorks(context,400,30)),
          Condition.smallerThan(name: TABLET, value: _buildThoseWorks(context,250,18))
        ]
    ).value;
    final dataForThoseWorksSystemView = _thoseWorksSystemViewListViewModel.getDataForThoseWorksSystemView;
    switch(dataForThoseWorksSystemView?.getEnumDataForThoseWorksSystemView) {
      case EnumDataForThoseWorksSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForThoseWorksSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForThoseWorksSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForThoseWorksSystemView.thoseWorks:
        return rvWidgetThoseWorks!;
      case EnumDataForThoseWorksSystemView.success:
        return TOPDBDVersionWebSystemView(widget.enumNavigationUtility);
      default:
        return Container();
    }
  }

  Widget _buildThoseWorks(BuildContext context,double sizedBoxWidth,double textSize) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(
                    width: sizedBoxWidth,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(16.0),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Engineering works. Check back later",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                ])
        ),
      ),
    );
  }

  void _init() {
    _thoseWorksSystemViewListViewModel
        .getStreamDataForThoseWorksSystemView
        .listen((event) {
          setState(() {});
        });
    _thoseWorksSystemViewListViewModel.listeningStreamsFirebaseFirestoreServiceForThoseWorksSystemView();
    final result = _thoseWorksSystemViewListViewModel.initForThoseWorksSystemView();
    debugPrint("ThoseWorksSystemView: $result");
    if(!mounted) {
      return;
    }
    _thoseWorksSystemViewListViewModel.notifyStreamDataForThoseWorksSystemView();
  }
}