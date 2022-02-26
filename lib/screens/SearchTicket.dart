import 'package:train_ticket/utilities/Constants.dart';
import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:train_ticket/widgets/TripCard.dart';

class SearchTicket extends StatefulWidget {
  const SearchTicket({Key? key}) : super(key: key);

  @override
  _SearchTicketState createState() => _SearchTicketState();
}

class _SearchTicketState extends State<SearchTicket>
    with TickerProviderStateMixin {
  @override
  initState() {
    super.initState();
    _tabController = TabController(length: homeTabs.length, vsync: this);
    _tabController!.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    setState(() {
      tabIndex = _tabController!.index;
    });
  }

  @override
  dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  TabController? _tabController;
  int tabIndex = 0;
  bool changeFromTo = false;

  List<Tab> homeTabs = [
    Tab(text: 'One Way'),
    Tab(text: 'Round Trip'),
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> tabViews = [
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: TripCard(),
            ),
          ],
        ),
      ),
      Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: TripCard(),
            ),
          ],
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36)),
                  color: primaryColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: tabViews,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height * 0.25) - 42,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  changeFromTo
                                      ? DelayedDisplay(
                                          child: Text(
                                            'İstanbul',
                                            style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      : DelayedDisplay(
                                          child: Text(
                                            'Ankara',
                                            style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                  Text(
                                    'From',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  changeFromTo
                                      ? DelayedDisplay(
                                          child: Text(
                                            'Ankara',
                                            style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )
                                      : DelayedDisplay(
                                          child: Text(
                                            'İstanbul',
                                            style: TextStyle(
                                              fontSize: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                  Text(
                                    'to',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 14),
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                changeFromTo = !changeFromTo;
                              });
                            },
                            child: Center(
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  Icons.compare_arrows_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(11, 0, 11, 0),
                  height: 52,
                  child: Stack(
                    children: [
                      Container(
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(28),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        height: 44,
                        width: (MediaQuery.of(context).size.width / 2) - 26,
                        margin: EdgeInsets.fromLTRB(
                            tabIndex == 1
                                ? (MediaQuery.of(context).size.width / 2) - 26
                                : 4,
                            4,
                            tabIndex == 4
                                ? (MediaQuery.of(context).size.width / 2) - 26
                                : 4,
                            4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 4,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 52,
                        width: MediaQuery.of(context).size.width,
                        child: TabBar(
                          labelColor: primaryColor,
                          unselectedLabelColor: veppoLightGrey,
                          indicatorColor: Colors.transparent,
                          controller: _tabController,
                          onTap: (index) {
                            setState(() {
                              tabIndex = index;
                            });
                          },
                          tabs: homeTabs,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
