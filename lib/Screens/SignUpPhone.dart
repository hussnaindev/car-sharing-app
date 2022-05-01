import 'package:flutter/material.dart';
import 'Rent.dart';

class SignUpPhone extends StatefulWidget {
  const SignUpPhone({Key? key}) : super(key: key);

  @override
  _SignUpPhoneState createState() => _SignUpPhoneState();
}

class _SignUpPhoneState extends State<SignUpPhone> {
  String phoneNumber = '';
  String dropdownValue = '+92';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'CELL PHONE NUMBER',
          style: TextStyle(fontSize: 15),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                    'Our App offers around the clock support for your journey.'),
                Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                Text(
                    'To provide this service, we would like to have your phone number.'),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                margin: const EdgeInsets.all(20),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  underline: Container(
                    alignment: Alignment.bottomCenter,
                    height: 1,
                    color: Colors.grey,
                  ),
                  icon: const Icon(Icons.arrow_downward),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['+91', '+92', '+93', '+94']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Cell Phone Number',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Rent()));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    margin: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Continue',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
