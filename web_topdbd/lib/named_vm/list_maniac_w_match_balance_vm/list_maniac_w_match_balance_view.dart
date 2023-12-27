import 'package:flutter/material.dart';

final class ListManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<ListManiacWMatchBalanceView> createState() => _ListManiacWMatchBalanceViewState();
}

final class _ListManiacWMatchBalanceViewState extends State<ListManiacWMatchBalanceView> {
  @override
  Widget build(BuildContext context) {
    /// THERE
    return Stack(
      children: [
        ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index) {
              return Card(
                  child: Text("$index"));
            }),
      ],
    );
  }
}