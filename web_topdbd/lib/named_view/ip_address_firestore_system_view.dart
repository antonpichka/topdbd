import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/enum_data_for_ip_address_firestore_system_view.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/ip_address_firestore_system_view_list_view_model.dart';

final class IPAddressFirestoreSystemView extends StatefulWidget {
  final EnumNavigationUtility enumNavigationUtility;

  const IPAddressFirestoreSystemView(this.enumNavigationUtility);

  @override
  State<IPAddressFirestoreSystemView> createState() => _IPAddressFirestoreSystemViewState();
}

final class _IPAddressFirestoreSystemViewState extends State<IPAddressFirestoreSystemView> {
  late final IPAddressFirestoreSystemViewListViewModel _iPAddressFirestoreSystemViewListViewModel;

  @override
  void initState() {
    _iPAddressFirestoreSystemViewListViewModel = IPAddressFirestoreSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _iPAddressFirestoreSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rvWidgetIsHack = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildIsHack(context,300,24)),
          Condition.largerThan(name: TABLET, value: _buildIsHack(context,400,30)),
          Condition.smallerThan(name: TABLET, value: _buildIsHack(context,250,18))
        ]
    ).value;
    final dataForIPAddressFirestoreSystemView = _iPAddressFirestoreSystemViewListViewModel.getDataForIPAddressFirestoreSystemView;
    switch(dataForIPAddressFirestoreSystemView?.getEnumDataForIPAddressFirestoreSystemView) {
      case EnumDataForIPAddressFirestoreSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForIPAddressFirestoreSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForIPAddressFirestoreSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForIPAddressFirestoreSystemView.isHack:
        return rvWidgetIsHack!;
      case EnumDataForIPAddressFirestoreSystemView.success:
        return MainView(widget.enumNavigationUtility);
      default:
        return Container();
    }
  }

  Widget _buildIsHack(BuildContext context,double sizedBoxWidth,double textSize) {
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
                                "Someone logged into your account OR your ip address has changed (IP addresses do not match)",
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
  Future<void> _init()
  async {
    _iPAddressFirestoreSystemViewListViewModel
        .getStreamDataForIPAddressFirestoreSystemView
        .listen((event) {
          setState(() {});
        });
    await _iPAddressFirestoreSystemViewListViewModel.listeningStreamsFirebaseFirestoreServiceForIPAddressFirestoreSystemView();
    final result = _iPAddressFirestoreSystemViewListViewModel.initForIPAddressFirestoreSystemView();
    debugPrint("IPAddressFirestoreSystemView: $result");
    if(!mounted) {
      return;
    }
    _iPAddressFirestoreSystemViewListViewModel.notifyStreamDataForIPAddressFirestoreSystemView();

  }
}