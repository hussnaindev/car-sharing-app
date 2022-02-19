import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Rent extends StatefulWidget {
  const Rent({Key? key}) : super(key: key);

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> with TickerProviderStateMixin {
  late TabController _tabController;
  bool isChecked = false;
  int tabBar = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
          minHeight: 120,
          maxHeight: 450,
          body: Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.deepOrange,
                  child: const Text('def'),
                ),
              )
            ],
          ),
          panel: Column(
            children: [
              Container(
                width: 60,
                height: 3,
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Text(''),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                color: Colors.white30,
                height: 30,
                child: Row(
                  children: [
                    TabBar(
                      controller: _tabController,
                      isScrollable: true,
                      indicatorColor: Colors.deepOrange,
                      indicatorSize: TabBarIndicatorSize.label,
                      onTap: (int value) {
                        setState(() {
                          tabBar = value;
                        });
                      },
                      tabs: [
                        Tab(
                          child: Text(
                            'CARS',
                            style: TextStyle(
                                fontSize: 18,
                                color: tabBar == 0
                                    ? Colors.deepOrange
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'TRUCKS',
                            style: TextStyle(
                                fontSize: 18,
                                color: tabBar == 1
                                    ? Colors.deepOrange
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Form(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                        height: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  label: Text(
                                    'SEARCH FOR A CITY OR PLACE',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    checkColor: Colors.black,
                                    value: isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                                Text('Return at pick-up location')
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 130,
                                  child: TextFormField(
                                    initialValue: 'FEB 20 | 12:00PM',
                                    decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        label: Text(
                                          'PICK-UP DATE',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrange),
                                        )),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                                Container(
                                  width: 130,
                                  child: TextFormField(
                                    initialValue: 'FEB 23 | 12:00PM',
                                    decoration: InputDecoration(
                                        border: UnderlineInputBorder(),
                                        label: Text(
                                          'RETURN DATE',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrange),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.deepOrange,
                                ),
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'SHOW OFFERS',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
              // TabBarView(controller: _tabController, children: [
              //   Container(
              //     color: Colors.green,
              //     child: Text('wqeq'),
              //   ),
              //   Container(color: Colors.indigo, child: Text('qasdf')),
              // ])
            ],
          ),
          footer: GestureDetector(
            onTap: () {},
            child: Container(
              decoration: const BoxDecoration(color: Colors.white70),
              height: 60,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: const [
                          Icon(Icons.person),
                          Text(
                            'Rent',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: const [
                          Icon(Icons.person),
                          Text(
                            'Share',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: const [
                          Icon(Icons.person),
                          Text(
                            'Ride',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: const [
                          Icon(Icons.person),
                          Text(
                            'Account',
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
