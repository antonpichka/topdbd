import 'package:flutter/material.dart';

final class FooterView extends StatefulWidget {
  @override
  State<FooterView> createState() => _FooterViewState();
}

final class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Text("SSS")
        ],),
    );
  }
}