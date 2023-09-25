import 'package:flutter/material.dart';
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
    final dataForIPAddressFirestoreSystemView = _iPAddressFirestoreSystemViewListViewModel.getDataForIPAddressFirestoreSystemView;
    switch(dataForIPAddressFirestoreSystemView?.getEnumDataForIPAddressFirestoreSystemView) {
      case EnumDataForIPAddressFirestoreSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForIPAddressFirestoreSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForIPAddressFirestoreSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForIPAddressFirestoreSystemView.isHack:
        return const Scaffold(body: Center(child: Text("Someone logged into your account (IP addresses do not match)")));
      case EnumDataForIPAddressFirestoreSystemView.success:
        return MainView();
      default:
        return Container();
    }
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