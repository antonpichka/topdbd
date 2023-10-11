import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

final class ListMatchesUserView extends StatefulWidget {
  @override
  State<ListMatchesUserView> createState() => _ListMatchesUserViewState();
}

final class _ListMatchesUserViewState extends State<ListMatchesUserView> {
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
          child: IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("+25",
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize)),
                        Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.green,
                          ),
                          constraints: const BoxConstraints(minWidth: 100),
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
                    ),
                  ),
                ),
                VerticalDivider(
                  width: 2.0,
                  color: Theme.of(context).dividerColor,),
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
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
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Wrap(
                                    children: [
                                      Text("Match Id:",
                                          style: TextStyle(
                                          fontSize: Theme
                                              .of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.fontSize),
                                      ),
                                      const SizedBox(width: 2,),
                                      Text("bd2c74a2-668a-11ee-8c99-0242ac120002",
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
                                    ],
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
                                child: Container(),
                              ),
                              Expanded(
                                child: Text("BO3",
                                  textAlign: TextAlign.center,
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
                                child: Wrap(
                                  children: [
                                    Tooltip(
                                      message: "France",
                                      child: Image.asset(
                                          'assets/icon/flags/france.png',
                                          width: 32,
                                          height: 32,
                                          fit: BoxFit.cover),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 2),
                                      child: Text("Vicar32",
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Text("2:1",
                                    textAlign: TextAlign.center,
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyLarge),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Wrap(
                                    children: [
                                      Tooltip(
                                        message: "France",
                                        child: Image.asset(
                                            'assets/icon/flags/france.png',
                                            width: 32,
                                            height: 32,
                                            fit: BoxFit.cover),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5,left: 2),
                                        child: Text("Enemy",
                                          style: Theme
                                              .of(context)
                                              .textTheme
                                              .bodyLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red)
                                  ),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Text("Bans:",
                                          style: Theme
                                              .of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            color: Theme.of(context).dividerColor
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
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
                                        ),
                                      ),
                                      const SizedBox(width: 3,),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            color: Theme.of(context).dividerColor
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
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
                                        ),
                                      ),
                                      const SizedBox(width: 3,),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            color: Theme.of(context).dividerColor
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
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
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Container()),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red)
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Wrap(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Text("Bans:",
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              color: Theme.of(context).colorScheme.primary
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Column(
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
                                          ),
                                        ),
                                        const SizedBox(width: 3,),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              color: Theme.of(context).dividerColor
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Column(
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
                                          ),
                                        ),
                                        const SizedBox(width: 3,),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              color: Theme.of(context).dividerColor
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Column(
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
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 3,),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green)
                                  ),
                                  child: Wrap(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0),
                                        child: Text("Picks:",
                                          style: Theme
                                              .of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            color: Theme.of(context).dividerColor
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3.0),
                                          child: Column(
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
                                        ),
                                      ),
                                      const SizedBox(width: 3,),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green)
                                  ),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Wrap(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Tooltip(
                                            message: "System Last Pick",
                                            child: Text("SLP:",
                                              style: Theme
                                                  .of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              color: Theme.of(context).dividerColor
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Column(
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
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  padding: const EdgeInsets.all(3.0),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green)
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Wrap(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20.0),
                                          child: Text("Picks:",
                                            style: Theme
                                                .of(context)
                                                .textTheme
                                                .bodyMedium,
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                                              color: Theme.of(context).dividerColor
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Column(
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
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
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
                                              child: Column(
                                                children: [
                                                  const Text("Win",
                                                    textAlign: TextAlign.center,),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                        color: Theme.of(context).dividerColor
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(4.0),
                                                      child: Column(
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Text("Round 1",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          Text("Vicar32 - 02:00.13",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          Text("Enemy - 01:40.43",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Theme.of(context).dividerColor),
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
                                              child: Column(
                                                children: [
                                                  const Text("Lose",
                                                    textAlign: TextAlign.center,),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                        color: Theme.of(context).dividerColor
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(4.0),
                                                      child: Column(
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
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Text("Round 2",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          Text("Vicar32 - 02:00.13",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          Text("Enemy - 02:40.43",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,)
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
                                              child: Column(
                                                children: [
                                                  const Text("Win",
                                                    textAlign: TextAlign.center,),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                                        color: Theme.of(context).dividerColor
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(4.0),
                                                      child: Column(
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
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Text("Round 3",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          Text("Vicar32 - 02:00.45",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,),
                                          Text("Enemy - 02:00.40",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.bodyMedium,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                  ),
                ),
              ],
            ),
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
        const SizedBox(height: 10,),
        const Text("'Vicar32' picked maniac 'Trapper'"),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Theme.of(context).dividerColor
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
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
            ),
          ),
        ),
        const Icon(Icons.arrow_downward),
        const Text("Banned Maps:"),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("Vicar32:",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Chapel",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_asy_chapel.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Chapel"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Coal Tower",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Coal Tower"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container()),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red)
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("Enemy:",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Chapel",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_asy_chapel.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Chapel"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Coal Tower",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Coal Tower"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Icon(Icons.arrow_downward),
        const Text("System Last Picked Map:"),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green)
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Theme.of(context).dividerColor
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    Tooltip(
                      message: "Gas Station",
                      child: Image.asset(
                          'assets/icon/dbd/maps/maps_jnk_gas_station.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover),
                    ),
                    const Text("Gas Station"),
                  ],
                ),
              ),
            ),
          ),
        ),
        const Icon(Icons.arrow_downward),
        const Text("Picked Maniac Perks:"),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green)
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("Vicar32:",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Chapel",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_asy_chapel.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Chapel"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Coal Tower",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Coal Tower"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container()),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green)
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("Enemy:",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Chapel",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_asy_chapel.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Chapel"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Coal Tower",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Coal Tower"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Icon(Icons.arrow_downward),
        const Text("Picked Survivor Perks:"),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green)
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("Vicar32:",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Chapel",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_asy_chapel.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Chapel"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Coal Tower",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Coal Tower"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container()),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green)
                ),
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Text("Enemy:",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Chapel",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_asy_chapel.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Chapel"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2,),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            color: Theme.of(context).dividerColor
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            children: [
                              Tooltip(
                                message: "Coal Tower",
                                child: Image.asset(
                                    'assets/icon/dbd/maps/maps_ind_coal_tower.png',
                                    width: 60,
                                    height: 60,
                                    fit: BoxFit.cover),
                              ),
                              const Text("Coal Tower"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10,),
      ],);
  }
}