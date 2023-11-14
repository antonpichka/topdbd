import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

final class CustomFooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
              text: "Terms of Use",
              style: Theme.of(context).textTheme.bodyLarge,
              recognizer: TapGestureRecognizer()..onTap = () {

              }
          ),
        ),
      ],
    );
  }
}