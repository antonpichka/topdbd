import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/item_maniac_w_match_balance_view.dart';
import 'package:web_topdbd/named_vm/list_maniac_w_match_balance_vm/list_maniac_w_match_balance_view.dart';

final class ListWItemManiacWMatchBalanceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ListManiacWMatchBalanceView(),
          ItemManiacWMatchBalanceView()
        ]);
  }
}