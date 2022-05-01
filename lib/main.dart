import 'package:flutter/material.dart';
import '/Screens/Rent.dart';
import '/Screens/MoreInfo.dart';
import '/Screens/Welcome.dart';
import '/Screens/Bookings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Car Riding App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const Welcome());
  }
}
