import 'package:flutter/material.dart';
import 'SignUpPassword.dart';

class SignUpName extends StatefulWidget {
  const SignUpName({Key? key}) : super(key: key);

  @override
  _SignUpNameState createState() => _SignUpNameState();
}

class _SignUpNameState extends State<SignUpName> {
  final first_name_controller = TextEditingController();
  final last_name_controller = TextEditingController();
  String first_name = '';
  String last_name = '';
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    first_name_controller.dispose();
    last_name_controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'GREAT TO HAVE YOU ABOARD',
          style: TextStyle(fontSize: 15),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('You made the right decision.'),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Text('How should we call you?'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill this field!';
                  }
                  return null;
                },
                controller: first_name_controller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'First Name *',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill this field!';
                  }
                  return null;
                },
                controller: last_name_controller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Last Name *',
                ),
              ),
            ),
            Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPassword()),
                        );
                      }
                      ;
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
      ),
    );
  }
}
