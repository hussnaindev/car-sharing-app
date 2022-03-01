import 'package:flutter/material.dart';
import 'Setting.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: mycolor,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                      color: mycolor,
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 42.5),
                  Container(
                      color: mycolor,
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 42.5),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    height: MediaQuery.of(context).size.height * 0.15,
                    color: mycolor,
                  ),
                  Row(
                    children: [
                      Container(
                        width: (MediaQuery.of(context).size.width * 0.70),
                        color: mycolor,
                      ),
                      Container(
                        color: mycolor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        color: mycolor,
                      ),
                      Container(
                        color: mycolor,
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                      color: mycolor,
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 42.5),
                  Container(
                      color: mycolor,
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 42.5),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
