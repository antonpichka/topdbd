import 'package:flutter/material.dart';

final class NotFoundView extends StatelessWidget {
  final String subUrl;

  const NotFoundView(this.subUrl);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("404 NOT FOUND: $subUrl"));
  }
}