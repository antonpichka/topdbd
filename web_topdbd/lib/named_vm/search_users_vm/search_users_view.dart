import 'package:flutter/material.dart';
import 'package:web_topdbd/named_vm/search_users_vm/test_search_users_view_model.dart';

final class SearchUsersView extends StatefulWidget {
  @override
  State<SearchUsersView> createState() => _SearchUsersViewState();
}

final class _SearchUsersViewState extends State<SearchUsersView> {
  /// RELEASE CODE
  // late final SearchUsersViewModel _viewModel;
  /// TEST CODE
  late final TestSearchUsersViewModel _viewModel;
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    /// RELEASE CODE
    // _viewModel = SearchUsersViewModel();
    /// TEST CODE
    _viewModel = TestSearchUsersViewModel();
    _textEditingController = TextEditingController();
    super.initState();
    _initParameterViewModel();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// THERE FIRST
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
                  onChanged: (String value) {

                  },
                )
            ),
          ),
          Expanded(
              child: SizedBox(
                height: 40,
                child: OutlinedButton(
                    onPressed: () {

                    },
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: BorderSide.none)),
                    child: const Icon(Icons.send)
                ),
              )
          ),
        ]);
  }

  Future<void> _initParameterViewModel() async {
    _viewModel
        .getStreamDataForNamedParameterNamedStreamWState
        .listen((event) {
          setState(() {});
        });
    final result = await _viewModel.init();
    debugPrint("SearchUsersView: $result");
    _viewModel.notifyStreamDataForNamedParameterNamedStreamWState();
  }
}