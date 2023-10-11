import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/data_for_named/data_for_verified_user_system_view/enum_data_for_verified_user_system_view.dart';
import 'package:web_topdbd/named_utility/enum_navigation_utility.dart';
import 'package:web_topdbd/named_view/ip_address_firestore_system_view.dart';
import 'package:web_topdbd/named_view_list_view_model/verified_user_system_view_list_view_model.dart';

final class VerifiedUserSystemView extends StatefulWidget {
  final EnumNavigationUtility enumNavigationUtility;

  const VerifiedUserSystemView(this.enumNavigationUtility);

  @override
  State<VerifiedUserSystemView> createState() => _VerifiedUserSystemViewState();
}

final class _VerifiedUserSystemViewState extends State<VerifiedUserSystemView> {
  late final VerifiedUserSystemViewListViewModel _verifiedUserSystemViewListViewModel;

  @override
  void initState() {
    _verifiedUserSystemViewListViewModel = VerifiedUserSystemViewListViewModel();
    super.initState();
    _init();
  }

  @override
  void dispose() {
    _verifiedUserSystemViewListViewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rvWidgetNotVerifiedUser = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildNotVerifiedUser(context,300,24,24)),
          Condition.largerThan(name: TABLET, value: _buildNotVerifiedUser(context,400,30,30)),
          Condition.smallerThan(name: TABLET, value: _buildNotVerifiedUser(context,250,18,18))
        ]
    ).value;
    final dataForVerifiedUserSystemView = _verifiedUserSystemViewListViewModel.getDataForVerifiedUserSystemView;
    switch(dataForVerifiedUserSystemView?.getEnumDataForVerifiedUserSystemView) {
      case EnumDataForVerifiedUserSystemView.isLoading:
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      case EnumDataForVerifiedUserSystemView.exception:
        return Scaffold(body: Center(child: Text("Exception: ${dataForVerifiedUserSystemView?.exceptionController.getKeyParameterException}")));
      case EnumDataForVerifiedUserSystemView.isNotVerifiedUserByVerifiedUser:
        return rvWidgetNotVerifiedUser!;
      case EnumDataForVerifiedUserSystemView.success:
        return IPAddressFirestoreSystemView(widget.enumNavigationUtility);
      default:
        return Container();
    }
  }

  Widget _buildNotVerifiedUser(BuildContext context,double sizedBoxWidth,double textSize,double textButtonSize) {
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
                              "You are not a verified user",
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
    _verifiedUserSystemViewListViewModel
        .getStreamDataForVerifiedUserSystemView
        .listen((event) {
          setState(() {});
        });
    await _verifiedUserSystemViewListViewModel.listeningStreamsFirebaseFirestoreServiceForVerifiedUserSystemView();
    final result = _verifiedUserSystemViewListViewModel.initForVerifiedUserSystemView();
    debugPrint("VerifiedUserSystemView: $result");
    if(!mounted) {
      return;
    }
    _verifiedUserSystemViewListViewModel.notifyStreamDataForVerifiedUserSystemView();
  }
}