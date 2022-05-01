import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.only(left: 0, top: 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.2,
            child: Padding(
                padding: EdgeInsets.only(left: 0, top: 0),
                child: Column(
                  children: [
                    Image.asset("assets/AccountImage.png",
                        height: MediaQuery.of(context).size.height / 3.1,
                        width: MediaQuery.of(context).size.width),
                    Text(""),
                    GestureDetector(
                      child: Text("My Booking"),
                    ),
                    Text("_____________________________________________"),
                    Text(""),
                    Text(""),
                    GestureDetector(
                      child: Text("My subscription"),
                    ),
                    Text("_____________________________________________"),
                    Text(""),
                    Text(""),
                    GestureDetector(
                      child: Text("Personal Information"),
                    ),
                    Text("_____________________________________________"),
                    Text(""),
                    Text(""),
                    GestureDetector(
                      child: Text("Vourchers And Benefits"),
                    ),
                    Text("_____________________________________________"),
                  ],
                )),
          )),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Account(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/rent.png")),
              title: Text('Rent'),
              backgroundColor: Colors.white30,
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/share.png")),
                title: Text('share'),
                backgroundColor: Colors.white30),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/ride.png")),
              title: Text('Ride'),
              backgroundColor: Colors.white30,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/subscribe (1).png")),
              title: Text('Subscribe'),
              backgroundColor: Colors.white30,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/user.png")),
              title: Text('Account'),
              backgroundColor: Colors.white30,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.orange,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
