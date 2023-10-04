import 'package:flutter/material.dart';

final class NavigationView extends StatefulWidget {
  @override
  State<NavigationView> createState() => _NavigationViewState();
}

final class _NavigationViewState extends State<NavigationView> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            const SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  children: [
                    Icon(Icons.navigation, color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(top: 3.0),
                      child: Text("Navigation"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
              ),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: MouseRegion(
                cursor: SystemMouseCursors.allScroll,
                child: RawScrollbar(
                  controller: _scrollController,
                  thumbColor: Theme.of(context).colorScheme.secondary,
                  radius: const Radius.circular(30),
                  thickness: 15,
                  thumbVisibility: true,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: GridView.count(
                          controller: _scrollController,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          childAspectRatio: 1 / 3.0,
                          crossAxisCount: 1,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(color: Theme.of(context).colorScheme.secondary),
                                      right: BorderSide(color: Theme.of(context).colorScheme.secondary),
                                      bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
                              ),
                              child: ListTile(
                                titleAlignment: ListTileTitleAlignment.titleHeight,
                                onTap: () {

                                },
                                leading: const Icon(Icons.stacked_bar_chart,color: Colors.white,),
                                title: Text("TOP Players",
                                  style: Theme.of(context).textTheme.bodyMedium,),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Theme.of(context).colorScheme.secondary),
                                      bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
                              ),
                              child: ListTile(
                                titleAlignment: ListTileTitleAlignment.titleHeight,
                                onTap: () {

                                },
                                leading: const Icon(Icons.tour,color: Colors.white,),
                                title: Text("Tournaments",
                                  style: Theme.of(context).textTheme.bodyMedium,),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(color: Theme.of(context).colorScheme.secondary),
                                      bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
                              ),
                              child: ListTile(
                                titleAlignment: ListTileTitleAlignment.titleHeight,
                                onTap: () {

                                },
                                leading: const Icon(Icons.balance,color: Colors.white,),
                                title: Text("Balance",
                                  style: Theme.of(context).textTheme.bodyMedium,),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}