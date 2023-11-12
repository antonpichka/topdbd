import 'package:flutter/material.dart';

final class SearchUsersView extends StatefulWidget {
  @override
  State<SearchUsersView> createState() => _SearchUsersViewState();
}

final class _SearchUsersViewState extends State<SearchUsersView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 30,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: 'Search users',
          prefixIcon: const Icon(
              Icons.search,
              size: 20.0),
          contentPadding: const EdgeInsets.only(
              left: 14.0,
              top: 10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.0),
            borderSide: const BorderSide(width: 2.0),
          ),
        ),
      )
    );
  }
}