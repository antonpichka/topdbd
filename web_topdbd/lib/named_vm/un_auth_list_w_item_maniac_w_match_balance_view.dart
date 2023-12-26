import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/un_auth_item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/un_auth_list_maniac_w_match_balance_view.dart';

final class UnAuthListWItemManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<UnAuthListWItemManiacWMatchBalanceView> createState() => _UnAuthListWItemManiacWMatchBalanceViewState();
}

final class _UnAuthListWItemManiacWMatchBalanceViewState extends State<UnAuthListWItemManiacWMatchBalanceView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UnAuthListManiacWMatchBalanceView(),
        UnAuthItemManiacWMatchBalanceView()
      ]);
  }
}