import 'package:flutter/material.dart';
import 'package:ride_sharing_app/Screens/Bookings.dart';
import 'package:ride_sharing_app/Screens/ShowStations.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'RentSearch.dart';
import 'Settings.dart';

class Rent extends StatefulWidget {
  const Rent({Key? key}) : super(key: key);

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> with TickerProviderStateMixin {
  DateTime selectedDate = DateTime.now();
  late TabController _tabController;
  bool isChecked = false;
  int tabBar = 0;
  int currentBottomNav = 1;
  late GoogleMapController mapController;
  final Map<String, Marker> _markers = {};
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  final LatLng _center = const LatLng(31.579646, 74.354349);

  void _onMapCreated(GoogleMapController controller) async {
    // BitmapDescriptor markerbitmap = await BitmapDescriptor.fromAssetImage(
    //   ImageConfiguration(size: Size(50, 50)),
    //   "car.png",
    // );
    setState(() {
      _markers.clear();
      _markers['Anarkali'] = const Marker(
        markerId: MarkerId(
          'Anarkali',
        ),
        position: LatLng(31.571359, 74.310355),
        infoWindow: InfoWindow(title: 'Car', snippet: 'Available'),
        icon: BitmapDescriptor.defaultMarker,
      );
      _markers['Sultanpura'] = const Marker(
        markerId: MarkerId(
          'Sultanpura',
        ),
        position: LatLng(31.5816, 74.341104),
        infoWindow: InfoWindow(title: 'Car', snippet: 'Available'),
        icon: BitmapDescriptor.defaultMarker,
      );
    });
    _markers['Azadi Chowk'] = const Marker(
      markerId: MarkerId(
        'Azadi Chowk',
      ),
      position: LatLng(31.5908, 74.3063),
      infoWindow: InfoWindow(title: 'Car', snippet: 'Available'),
      icon: BitmapDescriptor.defaultMarker,
    );
  }

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
          minHeight: MediaQuery.of(context).size.height * .18,
          maxHeight: MediaQuery.of(context).size.height * .60,
          body: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            markers: _markers.values.toSet(),
          ),
          panel: Column(
            children: [
              Container(
                width: 60,
                height: 3,
                alignment: Alignment.center,
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: const Text(''),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                color: const Color(0xffffffff),
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
                        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                        padding: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                        height: MediaQuery.of(context).size.height * 0.50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RentSearch()));
                              },
                              decoration: const InputDecoration(
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
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                                Text('Return at pick-up location')
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 80) *
                                          0.50,
                                  child: TextFormField(
                                    onTap: () {
                                      _selectDate(context);
                                    },
                                    initialValue: "${selectedDate.toLocal()}"
                                        .split(' ')[0],
                                    decoration: const InputDecoration(
                                        border: UnderlineInputBorder(),
                                        label: Text(
                                          'PICK-UP DATE',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepOrange),
                                        )),
                                  ),
                                ),
                                const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 80) *
                                          0.50,
                                  child: TextFormField(
                                    initialValue: "2022-02-25".split(' ')[0],
                                    decoration: const InputDecoration(
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
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ShowStations()));
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.deepOrange,
                                ),
                                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                height: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'SHOW STATIONS',
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
              decoration: const BoxDecoration(color: Color(0xfff3f3f3)),
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentBottomNav = 1;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ImageIcon(
                            const AssetImage("key-chain.png"),
                            size: 23,
                            color: currentBottomNav == 1
                                ? Colors.deepOrange
                                : Colors.black,
                          ),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                          const Text(
                            'Rent',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentBottomNav = 2;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ImageIcon(
                            const AssetImage("share.png"),
                            size: 23,
                            color: currentBottomNav == 2
                                ? Colors.deepOrange
                                : Colors.black,
                          ),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                          const Text(
                            'Share',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentBottomNav = 3;
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ImageIcon(
                            const AssetImage("ride.png"),
                            size: 23,
                            color: currentBottomNav == 3
                                ? Colors.deepOrange
                                : Colors.black,
                          ),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                          const Text(
                            'Ride',
                            style: TextStyle(fontSize: 9),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        currentBottomNav = 4;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bookings()));
                      });
                    },
                    child: Container(
                      child: Column(
                        children: [
                          ImageIcon(
                            const AssetImage("account.png"),
                            size: 23,
                            color: currentBottomNav == 4
                                ? Colors.deepOrange
                                : Colors.black,
                          ),
                          const Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0)),
                          const Text(
                            'Account',
                            style: TextStyle(fontSize: 9),
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
