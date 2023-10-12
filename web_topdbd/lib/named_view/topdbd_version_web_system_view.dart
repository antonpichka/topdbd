import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/data_for_topdbd_version_web_system_view.dart';
import 'package:web_topdbd/data_for_named/data_for_topdbd_version_web_system_view/enum_data_for_topdbd_version_web_system_view.dart';
import 'package:web_topdbd/named_utility/navigation_utility.dart';
import 'package:web_topdbd/named_view/defined_view.dart';
import 'package:web_topdbd/named_view_list_view_model/topdbd_version_web_system_view_list_view_model.dart';

final class TOPDBDVersionWebSystemView extends StatefulWidget {
  final NavigationUtility navigationUtility;

  const TOPDBDVersionWebSystemView(this.navigationUtility);

  @override
  State<TOPDBDVersionWebSystemView> createState() => _TOPDBDVersionWebSystemViewState();
}

final class _TOPDBDVersionWebSystemViewState extends State<TOPDBDVersionWebSystemView> {
  late final TOPDBDVersionWebSystemViewListViewModel _tOPDBDVersionWebSystemViewListViewModel;

  @override
  void initState() {
    _tOPDBDVersionWebSystemViewListViewModel = TOPDBDVersionWebSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _tOPDBDVersionWebSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataForTOPDBDVersionWebSystemView = _tOPDBDVersionWebSystemViewListViewModel.getDataForTOPDBDVersionWebSystemView;
    final rvWidgetIsNotValidVersionTOPDBDVersionWeb = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForTOPDBDVersionWebSystemView,300,24)),
          Condition.largerThan(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForTOPDBDVersionWebSystemView,400,30)),
          Condition.smallerThan(name: TABLET, value: _buildIsNotValidVersionTOPDBDVersionWeb(context,dataForTOPDBDVersionWebSystemView,250,18))
        ]
    ).value;
    switch(dataForTOPDBDVersionWebSystemView?.getEnumDataForTOPDBDVersionWebSystemView) {
      case EnumDataForTOPDBDVersionWebSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForTOPDBDVersionWebSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForTOPDBDVersionWebSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForTOPDBDVersionWebSystemView.isNotValidVersionTOPDBDVersionWeb:
        return rvWidgetIsNotValidVersionTOPDBDVersionWeb!;
      case EnumDataForTOPDBDVersionWebSystemView.success:
        return DefinedView(widget.navigationUtility);
      default:
        return Container();
    }
  }

  Widget _buildIsNotValidVersionTOPDBDVersionWeb(BuildContext context,DataForTOPDBDVersionWebSystemView? dataForTOPDBDVersionWebSystemView,double sizedBoxWidth,double textSize) {
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
                                "The site version has been changed. Check back later (Version: ${dataForTOPDBDVersionWebSystemView?.versionByTOPDBDVersionWeb})",
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
    _tOPDBDVersionWebSystemViewListViewModel
        .getStreamDataForTOPDBDVersionWebSystemView
        .listen((event) {
          setState(() {});
        });
    _tOPDBDVersionWebSystemViewListViewModel.listeningStreamsFirebaseFirestoreServiceForTOPDBDVersionWebSystemView();
    final result = _tOPDBDVersionWebSystemViewListViewModel.initForTOPDBDVersionWebSystemView();
    debugPrint("TOPDBDVersionWebSystemView: $result");
    if(!mounted) {
      return;
    }
    _tOPDBDVersionWebSystemViewListViewModel.notifyStreamDataForTOPDBDVersionWebSystemView();

  }
}