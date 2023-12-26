import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/auth_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/auth_list_maniac_w_match_balance_view.dart';

final class AuthListWItemManiacWMatchBalanceView extends StatefulWidget {
  final bool isAdminByRoleUser;

  const AuthListWItemManiacWMatchBalanceView(this.isAdminByRoleUser);

  @override
  State<AuthListWItemManiacWMatchBalanceView> createState() => _AuthListWItemManiacWMatchBalanceViewState();
}

final class _AuthListWItemManiacWMatchBalanceViewState extends State<AuthListWItemManiacWMatchBalanceView> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          AuthListManiacWMatchBalanceView(widget.isAdminByRoleUser),
          AuthItemManiacWMatchBalanceView(widget.isAdminByRoleUser)
        ]);
  }
}