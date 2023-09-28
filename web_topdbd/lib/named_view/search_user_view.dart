import 'package:flutter/material.dart';

final class SearchUserView extends StatefulWidget {
  @override
  State<SearchUserView> createState() => _SearchUserViewState();
}

final class _SearchUserViewState extends State<SearchUserView> {
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
      child: Theme(data: Theme.of(context).copyWith(
          textSelectionTheme: TextSelectionThemeData(selectionColor: Theme.of(context).colorScheme.secondary)),
        child: TextFormField(
          cursorColor: Theme.of(context).colorScheme.secondary,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).dividerColor,
            hintText: 'Search users',
            prefixIcon: const Icon(
              Icons.search,
              size: 20.0,
              color: Colors.white,),
            contentPadding: const EdgeInsets.only(
                left: 14.0,
                top: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 2.0),
            ),
          ),
        ),
      )
    );
  }
}