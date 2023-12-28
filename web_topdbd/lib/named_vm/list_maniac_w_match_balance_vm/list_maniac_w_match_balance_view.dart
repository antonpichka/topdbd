import 'package:flutter/material.dart';

final class ListManiacWMatchBalanceView extends StatefulWidget {
  @override
  State<ListManiacWMatchBalanceView> createState() => _ListManiacWMatchBalanceViewState();
}

final class _ListManiacWMatchBalanceViewState extends State<ListManiacWMatchBalanceView> {
  late final ScrollController _scrollController;
  bool _isMaxLeftScroll = false;
  bool _isMaxRightScroll = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_listenerWhereScrollControllerParametersThree);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listenerWhereScrollControllerParametersThree);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// THERE
    return Column(
      children: [
        /// THERE MATCH BALANCE
        Stack(
          children: [
            SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const ClampingScrollPhysics(),
                    controller: _scrollController,
                    itemCount: 30,
                    separatorBuilder: (context,index) {
                      return const SizedBox(width: 12,);
                    },
                    itemBuilder: (context,index) {
                      const str = "TrapperqqqqqqqQwqwqwq";
                      final value = str.length > 8 ? "${str.substring(0,8)}..." : str;
                      return SizedBox(
                        width: 120,
                        child: ListTile(
                          onTap: () {

                          },
                          selected: false,
                          selectedTileColor: Theme.of(context).colorScheme.background,
                          tileColor: Theme.of(context).colorScheme.surface,
                          title: Column(
                            children: [
                              Image.asset(
                                  'assets/icon/dbd/maniac/maniac_trapper.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover),
                              Flexible(
                                  child: Text(value))
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
            _isMaxLeftScroll ? Container() : Positioned.fill(
              child: Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    _scrollController.position.animateTo(_scrollController.position.minScrollExtent,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                  }),
              ),
            ),
            _isMaxRightScroll ? Container() : Positioned.fill(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    icon: const Icon(Icons.arrow_forward),
                    onPressed: () {
                      _scrollController.position.animateTo(_scrollController.position.maxScrollExtent,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.ease);
                    }),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _listenerWhereScrollControllerParametersThree() {
    if (!_scrollController.position.atEdge) {
      return;
    }
    if(_scrollController.position.pixels == _scrollController.position.minScrollExtent) {
      setState(() {
        _isMaxLeftScroll = true;
        _isMaxRightScroll = false;
      });
      return;
    }
    if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      setState(() {
        _isMaxLeftScroll = false;
        _isMaxRightScroll = true;
      });
      return;
    }
  }
}