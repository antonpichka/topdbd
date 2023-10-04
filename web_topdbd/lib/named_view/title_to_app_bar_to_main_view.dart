import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_view/buttons_account_view.dart';
import 'package:web_topdbd/named_view/search_users_view.dart';

final class TitleToAppBarToMainView extends StatefulWidget {
  @override
  State<TitleToAppBarToMainView> createState() => _TitleToAppBarToMainViewState();
}

final class _TitleToAppBarToMainViewState extends State<TitleToAppBarToMainView> {
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rvWidgetTabletAndMobileOrDesktop = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _buildTabletAndMobile()),
          Condition.largerThan(name: TABLET, value: _buildDesktop()),
          Condition.smallerThan(name: TABLET, value: _buildTabletAndMobile())
        ]
    ).value;
    return rvWidgetTabletAndMobileOrDesktop!;
  }

  Widget _buildTabletAndMobile() {
    return Image.asset(
        'assets/icon/app_icon.png',
        width: 75,
        height: 75,
        fit: BoxFit.cover);
  }

  Widget _buildDesktop() {
    return Row(
      children: [
        Expanded(child: Container()),
        Image.asset(
            'assets/icon/app_icon.png',
            width: 75,
            height: 75,
            fit: BoxFit.cover),
        Expanded(child: Container()),
        Expanded(flex: 2,child: SearchUsersView()),
        const SizedBox(width: 10,),
        Expanded(flex: 3,child: ButtonsAccountView()),
      ],
    );
  }
}