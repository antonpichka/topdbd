import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_topdbd/named_vm/search_users_view.dart';

final class TitleWAppBarView extends StatelessWidget {
  final Widget _unAuthWAuthView;

  const TitleWAppBarView(this._unAuthWAuthView);

  @override
  Widget build(BuildContext context) {
    final value = ResponsiveValue<Widget>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: _getWidgetWhereTabletAndMobile()),
          Condition.equals(name: TABLET, value: _getWidgetWhereTabletAndMobile()),
          Condition.equals(name: DESKTOP, value: _getWidgetWhereDesktop()),
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
        Expanded(flex: 3,child: _unAuthWAuthView),
      ],
    );
  }
}