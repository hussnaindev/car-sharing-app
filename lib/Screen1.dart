import 'package:flutter/material.dart';
import 'Setting.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          color: mycolor),
      const Padding(padding: EdgeInsets.all(5)),
      Row(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.48,
          height: MediaQuery.of(context).size.height * 0.22,
          color: mycolor,
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Container(
          width: MediaQuery.of(context).size.width * 0.48,
          height: MediaQuery.of(context).size.height * 0.22,
          color: mycolor,
        )
      ]),
      const Padding(padding: EdgeInsets.all(5)),
      Row(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          height: MediaQuery.of(context).size.height * 0.22,
          color: mycolor,
        ),
        const Padding(padding: EdgeInsets.all(5)),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.22,
          color: mycolor,
        )
      ]),
      const Padding(padding: EdgeInsets.all(5)),
      Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: MediaQuery.of(context).size.height * 0.22,
            color: mycolor,
          ),
          const Padding(padding: EdgeInsets.all(5)),
          Container(
            width: MediaQuery.of(context).size.width * 0.15,
            height: MediaQuery.of(context).size.height * 0.22,
            color: mycolor,
          )
        ],
      )
    ]));
  }
}
