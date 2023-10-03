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
    const itemOne = "TOP Playerwqwqwqwqwqwkjfewklfwjelfkwjflwqwqwqwqklgqwwwqw;glk;glk;glkg;elrgkrl;tkerg;er;lgtker;glerkg;erlgerkg;erkgl;ke;elrgkr;gker;gekg;ergk;elkg;elgkeg;lerkgjeflkfwelfkfegjelgkejlergergergergergergergergregrgrggggggggggggggggggggggggggggggggggggggggwfwejflkefjwfklwfjwlfwfwjlwdwdww'e;fle';glge';lerg;'erlger;gelrger;'glerg';erglerg';ergler';gergl';;egle';rgelg';egelre;'gelge';gels";
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        elevation: 1.0,
        color: Theme.of(context).colorScheme.surface,
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
                      Tooltip(
                        message: itemOne,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(color: Theme.of(context).colorScheme.secondary),
                                  bottom: BorderSide(color: Theme.of(context).colorScheme.secondary))
                          ),
                          child: ListTile(
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            onTap: () {

                            },
                            leading: const Icon(Icons.stacked_bar_chart,
                              color: Colors.white,),
                            title: Text(itemOne.length >  45 ? "${itemOne.substring(0,45)}..." : itemOne,
                                style: Theme.of(context).textTheme.bodyMedium),
                          ),
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
                          leading: const Icon(Icons.stacked_bar_chart,color: Colors.white,),
                          title: Text("TOP Players",
                            style: Theme.of(context).textTheme.bodyMedium,),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
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
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}