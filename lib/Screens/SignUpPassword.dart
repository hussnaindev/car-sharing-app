import 'package:flutter/material.dart';
import 'SignUpPhone.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({Key? key}) : super(key: key);

  @override
  _SignUpPasswordState createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  final passwordController = TextEditingController();
  String password = '';
  bool visibility = false;
  bool isValidPassword = false;
  bool minEightChar = false;
  bool lowercase = false;
  bool uppercase = false;
  bool number = false;
  bool specialChar = false;
  final _formKey = GlobalKey<FormState>();

  _moveToNextScreen() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignUpPhone()));
    }
    ;
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'PLEASE SET A PASSWORD TO SIGN UP',
          style: TextStyle(fontSize: 15),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
                  Text('Welcome hussnain444all@gmail.com!'),
                  Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Text('Secure your new account with password'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(15),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'invalid';
                  }
                  if (value.length >= 8) {
                    setState(() {
                      minEightChar = true;
                    });
                  } else {
                    setState(() {
                      minEightChar = false;
                    });
                  }
                  if (value.contains(RegExp(r"(?=.*[a-z])"))) {
                    setState(() {
                      lowercase = true;
                    });
                  } else {
                    setState(() {
                      lowercase = false;
                    });
                  }
                  if (value.contains(RegExp(r"(?=.*[A-Z])"))) {
                    setState(() {
                      uppercase = true;
                    });
                  } else {
                    setState(() {
                      uppercase = false;
                    });
                  }
                  if (value.contains(RegExp(r"[0-9]"))) {
                    setState(() {
                      number = true;
                    });
                  } else {
                    setState(() {
                      number = false;
                    });
                  }
                  if (value
                      .contains(RegExp(r"[*.!@#\$%^&(){}:;<>,.'?/~_+-=]"))) {
                    setState(() {
                      specialChar = true;
                    });
                  } else {
                    setState(() {
                      specialChar = false;
                    });
                  }
                  if (!uppercase ||
                      !lowercase ||
                      !minEightChar ||
                      !specialChar ||
                      !number) {
                    return 'Invalid ';
                  }
                  return null;
                },
                controller: passwordController,
                decoration: InputDecoration(
                    border: const UnderlineInputBorder(),
                    labelText: 'Enter Password',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                      icon: visibility
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    )),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Password must meet the following requirements: '),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: minEightChar ? Colors.black : Colors.grey,
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                      Text(
                        'Minimum of 8 characters',
                        style: TextStyle(
                            color: minEightChar ? Colors.black : Colors.grey),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: lowercase ? Colors.black : Colors.grey,
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                      Text(
                        'Atleast one lower case',
                        style: TextStyle(
                            color: lowercase ? Colors.black : Colors.grey),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: uppercase ? Colors.black : Colors.grey,
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                      Text(
                        'Atleast one upper case',
                        style: TextStyle(
                            color: uppercase ? Colors.black : Colors.grey),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: number ? Colors.black : Colors.grey,
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                      Text(
                        'Atleast one number',
                        style: TextStyle(
                            color: number ? Colors.black : Colors.grey),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: specialChar ? Colors.black : Colors.grey,
                      ),
                      const Padding(padding: EdgeInsets.fromLTRB(5, 0, 5, 0)),
                      Text(
                        'Atleast one special character',
                        style: TextStyle(
                            color: specialChar ? Colors.black : Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      _moveToNextScreen();
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
