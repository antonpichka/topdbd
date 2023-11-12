import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_view/buttons_account_view.dart';
import 'package:web_topdbd/named_view/search_users_view.dart';

final class TitleWAppBarView extends StatefulWidget {
  @override
  State<TitleWAppBarView> createState() => _TitleWAppBarViewState();
}

final class _TitleWAppBarViewState extends State<TitleWAppBarView> {
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
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: TABLET, value: _getWidgetWhereTabletAndMobile()),
          Condition.largerThan(name: TABLET, value: _getWidgetWhereDesktop()),
          Condition.smallerThan(name: TABLET, value: _getWidgetWhereTabletAndMobile())
        ]
    ).value ?? Container();
    return value;
  }

  Widget _getWidgetWhereTabletAndMobile() {
    return Image.asset(
        'assets/icon/app_icon.png',
        width: 75,
        height: 75,
        fit: BoxFit.cover);
  }

  Widget _getWidgetWhereDesktop() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
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
      ),
    );
  }
}