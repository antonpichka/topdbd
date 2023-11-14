import 'package:flutter/material.dart';

final class SearchUsersView extends StatefulWidget {
  @override
  State<SearchUsersView> createState() => _SearchUsersViewState();
}

final class _SearchUsersViewState extends State<SearchUsersView> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            height: 40,
            child: TextFormField(
              controller: _textEditingController,
              decoration: InputDecoration(
                filled: true,
                hintText: "Search Players",
                prefixIcon: const Icon(
                    Icons.search,
                    size: 25.0),
                suffixIcon: IconButton(
                  onPressed: _textEditingController.clear,
                  icon: const Icon(Icons.clear),
                ),
                contentPadding: const EdgeInsets.only(
                    left: 14.0,
                    top: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                  borderSide: const BorderSide(width: 2.0),
                ),
              ),
            )
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 40,
            child: OutlinedButton(
                onPressed: (){},
                style: OutlinedButton.styleFrom(shape:  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide.none,
                )),
                child: const Icon(Icons.send)
            ),
          )
        ),
      ],
    );
  }
}