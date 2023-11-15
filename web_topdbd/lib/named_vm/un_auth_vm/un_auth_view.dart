import 'package:flutter/material.dart';
import 'package:web_topdbd/named_utility/keys_navigation_utility.dart';
import 'package:web_topdbd/named_utility/web_navigation_utility.dart';

final class UnAuthView extends StatefulWidget {
  @override
  State<UnAuthView> createState() => _UnAuthViewState();
}

final class _UnAuthViewState extends State<UnAuthView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Wrap(
        children: [
          Tooltip(
            message: "Login",
            child: Ink(
              decoration: const ShapeDecoration(
                  shape: CircleBorder()
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.login,
                ),
                iconSize: 30,
                onPressed: () {
                  WebNavigationUtility.goWhereChangeUrlAddressAndNewViewFromTwo(context,KeysNavigationUtility.navigationViewQQLogin);
                },
              ),
            ),
          ),
          Tooltip(
            message: "Download",
            child: Ink(
              decoration: const ShapeDecoration(
                  shape: CircleBorder()
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.download,
                ),
                iconSize: 30,
                onPressed: () {
                },
              ),
            ),
          ),
        ],),
    );
  }
}