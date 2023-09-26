import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_ip_address_firestore_system_view/enum_data_for_ip_address_firestore_system_view.dart';
import 'package:web_topdbd/named_view/main_view.dart';
import 'package:web_topdbd/named_view_list_view_model/ip_address_firestore_system_view_list_view_model.dart';

final class IPAddressFirestoreSystemView extends StatefulWidget {
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
        defaultValue: _buildIsHack(context,300,24,24),
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildIsHack(context,300,24,24)),
          Condition.largerThan(name: TABLET, value: _buildIsHack(context,400,30,30)),
          Condition.smallerThan(name: TABLET, value: _buildIsHack(context,250,18,18))
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
        return MainView();
      default:
        return Container();
    }
  }

  Widget _buildIsHack(BuildContext context,double sizedBoxWidth,double textSize,double textButtonSize) {
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
                                "Someone logged into your account (IP addresses do not match).Refresh to gain access again and change your password to account",
                                style: TextStyle(
                                  fontSize: textSize,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 1.8,
                                ),
                              ),
                              const SizedBox(height: 5,),
                              ElevatedButton(
                                  onPressed: () {

                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Theme.of(context).colorScheme.secondary,
                                    foregroundColor: Theme.of(context).textTheme.bodyMedium?.color,
                                  ),
                                  child: Text(
                                    "Logout",
                                    style: TextStyle(
                                      color: Theme.of(context).textTheme.bodyMedium?.color,
                                      fontSize: textButtonSize,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1.8,
                                    ),
                                  )
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