import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/search_users_vm/search_users_view.dart';

final class DrawerView extends StatelessWidget {
  final Widget _unAuthDrawerViewWAuthDrawerView;

  const DrawerView(this._unAuthDrawerViewWAuthDrawerView);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SearchUsersView(),
          const SizedBox(height: 2,),
          _unAuthDrawerViewWAuthDrawerView
        ],),
    );
  }
}