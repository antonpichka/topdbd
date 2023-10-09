import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class ListMatchesView extends StatefulWidget {
  @override
  State<ListMatchesView> createState() => _ListMatchesViewState();
}

final class _ListMatchesViewState extends State<ListMatchesView> {
  late final ScrollController _scrollController;
  bool _isExpanded = false;

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
    final rvDoubleWidthSizedBox = ResponsiveValue<double>(
        context,
        conditionalValues: [
          Condition.equals(name: MOBILE, value: 1.0),
          Condition.equals(name: TABLET, value: 1.0),
          Condition.equals(name: DESKTOP,value: 2.1),
        ]).value;
    return SizedBox(
      width: MediaQuery.of(context).size.width / rvDoubleWidthSizedBox!,
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
                      Icon(Icons.videogame_asset, color: Colors.white,),
                      SizedBox(width: 2,),
                      Padding(
                        padding: EdgeInsets.only(top: 3.0),
                        child: Text("Matches"),
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
              const SizedBox(height: 5,),
              SizedBox(
                width: double.infinity,
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _isExpanded = isExpanded;
                    });
                  }, children: [
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                      _buildExpansionPanelToExpansionPanelList(),
                    ],
                )),
            ]),
      ),
    );
  }


  ExpansionPanel _buildExpansionPanelToExpansionPanelList() {
    return ExpansionPanel(
      isExpanded: _isExpanded,
      headerBuilder: (BuildContext context, bool isExpanded) {
        return Card(
          color: Colors.transparent,
          elevation: 3.0,
          child: Row(
            children: [
              Expanded(
                  child: Column(
                    children: [
                      Text("+25",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize)),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.green
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Win",
                            textAlign: TextAlign.center,),
                        ),
                      ),
                      Text("-25",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize)),
                    ],
                  )
              ),
              const SizedBox(width: 10,),
              Expanded(
                flex: 10,
                child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text("12:30,Oct 7",
                              style: TextStyle(
                                  fontSize: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.fontSize,
                                  color: Theme
                                      .of(context)
                                      .hintColor),
                            ),
                          ),
                          Expanded(
                            child: Tooltip(
                              message: "Match ID",
                              child: Text("bd2c74a2-668a-11ee-8c99-0242ac120002",
                                style: TextStyle(
                                    fontSize: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.fontSize,
                                    color: Theme
                                        .of(context)
                                        .hintColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Theme.of(context).dividerColor)
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(),
                          ),
                          Expanded(
                            child: Text("BO3",
                              style: TextStyle(
                                  fontSize: Theme
                                      .of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.fontSize,
                                  color: Theme
                                      .of(context)
                                      .hintColor),
                            ),
                          ),
                          Expanded(
                            child: Container()
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text("Vicar32",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge,
                            ),
                          ),
                          Expanded(
                            child: Text("2:1",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyLarge),
                          ),
                          Expanded(
                            child: Text("Enemy",
                              textAlign: TextAlign.right,
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red)
                              ),
                              child: Wrap(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Text("Bans:",
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Tooltip(
                                        message: "Trapper",
                                        child: Image.asset(
                                            'assets/icon/dbd/maniac/maniac_trapper.png',
                                            width: 42,
                                            height: 42,
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Trapper"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Tooltip(
                                        message: "Kolya",
                                        child: Image.asset(
                                            'assets/icon/dbd/maniac/maniac_kolya.png',
                                            width: 42,
                                            height: 42,
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Kolya"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Tooltip(
                                        message: "Nurse",
                                        child: Image.asset(
                                            'assets/icon/dbd/maniac/maniac_nurse.png',
                                            width: 42,
                                            height: 42,
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Nurse"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red)
                              ),
                              child: Wrap(
                                runAlignment: WrapAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Text("Bans:",
                                      style: Theme
                                          .of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Tooltip(
                                        message: "Trapper",
                                        child: Image.asset(
                                            'assets/icon/dbd/maniac/maniac_trapper.png',
                                            width: 42,
                                            height: 42,
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Trapper"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Tooltip(
                                        message: "Kolya",
                                        child: Image.asset(
                                            'assets/icon/dbd/maniac/maniac_kolya.png',
                                            width: 42,
                                            height: 42,
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Kolya"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Tooltip(
                                        message: "Nurse",
                                        child: Image.asset(
                                            'assets/icon/dbd/maniac/maniac_nurse.png',
                                            width: 42,
                                            height: 42,
                                            fit: BoxFit.cover),
                                      ),
                                      const Text("Nurse"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green)
                                    ),
                                    child: Wrap(
                                      children: [
                                        Text("Picks:",
                                          style: Theme
                                              .of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        Tooltip(
                                          message: "Trapper",
                                          child: Image.asset(
                                              'assets/icon/dbd/maniac/maniac_trapper.png',
                                              width: 30,
                                              height: 30,
                                              fit: BoxFit.cover),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Container()),
                              ],
                            ),
                          ),
                          Wrap(
                            children: [
                              Container(),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.green)
                                ),
                                child: Wrap(
                                  children: [
                                    Tooltip(
                                      message: "System Last Pick",
                                      child: Text("SLP:",
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ),
                                    Tooltip(
                                      message: "Nurse",
                                      child: Image.asset(
                                          'assets/icon/dbd/maniac/maniac_nurse.png',
                                          width: 30,
                                          height: 30,
                                          fit: BoxFit.cover),
                                    ),
                                  ],
                                ),
                              ),
                              Container(),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container()),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.green)
                                    ),
                                    child: Wrap(
                                      children: [
                                        Text("Picks:",
                                          style: Theme
                                              .of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                        Tooltip(
                                          message: "Kolya",
                                          child: Image.asset(
                                              'assets/icon/dbd/maniac/maniac_kolya.png',
                                              width: 30,
                                              height: 30,
                                              fit: BoxFit.cover),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5,),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Theme.of(context).dividerColor)
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.green
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                const Text("Win",
                                                  textAlign: TextAlign.center,),
                                                Tooltip(
                                                  message: "Trapper",
                                                  child: Image.asset(
                                                      'assets/icon/dbd/maniac/maniac_trapper.png',
                                                      width: 40,
                                                      height: 40,
                                                      fit: BoxFit.cover),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Round 1",
                                        style: Theme.of(context).textTheme.bodyMedium,),
                                      const Text("Vicar32 - 02:00.13"),
                                      const Text("Enemy - 01:40.43")
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Theme.of(context).dividerColor)
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.red
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                const Text("Lose",
                                                  textAlign: TextAlign.center,),
                                                Tooltip(
                                                  message: "Kolya",
                                                  child: Image.asset(
                                                      'assets/icon/dbd/maniac/maniac_kolya.png',
                                                      width: 40,
                                                      height: 40,
                                                      fit: BoxFit.cover),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Round 2",
                                        style: Theme.of(context).textTheme.bodyMedium,),
                                      const Text("Vicar32 - 02:00.13"),
                                      const Text("Enemy - 02:40.43")
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Theme.of(context).dividerColor)
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 4.0),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(Radius.circular(10)),
                                              color: Colors.green
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                const Text("Win",
                                                  textAlign: TextAlign.center,),
                                                Tooltip(
                                                  message: "Nurse",
                                                  child: Image.asset(
                                                      'assets/icon/dbd/maniac/maniac_nurse.png',
                                                      width: 40,
                                                      height: 40,
                                                      fit: BoxFit.cover),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Round 3",
                                        style: Theme.of(context).textTheme.bodyMedium,),
                                      const Text("Vicar32 - 02:00.45"),
                                      const Text("Enemy - 02:00.40")
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        );
      },
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context,index) {
                return _buildItemToListView();
              },
              separatorBuilder: (context,index) {
                return  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Theme.of(context).dividerColor))
                    )
                );
              }),
        ));
  }

  Widget _buildItemToListView() {
    return Column(
      children: [
        const Text("'Vicar32' picked maniac 'Trapper'"),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Theme.of(context).dividerColor
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Tooltip(
                message: "Trapper",
                child: Image.asset(
                    'assets/icon/dbd/maniac/maniac_trapper.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        const Icon(Icons.arrow_downward),
        const Text("Banned Maps:"),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: Wrap(
                        children: [
                          Text("Vicar32:",
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyMedium,
                          ),
                          Tooltip(
                            message: "Chapel",
                            child: Image.asset(
                                'assets/icon/dbd/maps/maps_asy_chapel.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover),
                          ),
                          Tooltip(
                            message: "Coal Tower",
                            child: Image.asset(
                                'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red)
                      ),
                      child: Wrap(
                        children: [
                          Text("Enemy:",
                            style: Theme
                                .of(context)
                                .textTheme
                                .bodyMedium,
                          ),
                          Tooltip(
                            message: "Mine",
                            child: Image.asset(
                                'assets/icon/dbd/maps/maps_ind_mine.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover),
                          ),
                          Tooltip(
                            message: "Storehouse",
                            child: Image.asset(
                                'assets/icon/dbd/maps/maps_ind_storehouse.png',
                                width: 60,
                                height: 60,
                                fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Icon(Icons.arrow_downward),
      ],);
  }
}