import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(home: login8()));
// }

class login8 extends StatelessWidget {
  const login8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login/room4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.5),
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Awesome App",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "login".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "email",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "password",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  RaisedButton(
                    elevation: 0,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      "login",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              textColor: Colors.black,
              child: Text(
                "sign up".toUpperCase(),
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
