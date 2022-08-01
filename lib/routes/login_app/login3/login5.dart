import 'package:flutter/material.dart';

class Login5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.lightGreen, Colors.green])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  //Icon(Icons.local_restaurant, size: 50),
                  Container(
                    height: 80,
                    child: Image.network('https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/food%2Flogo.png?alt=media'),
                  ),
                  SizedBox(height: 30),
                  Text("Good in food".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.3)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Container(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 16.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)),
                                  color: Colors.white),
                              child: Icon(Icons.person,
                                  color: Colors.lightGreen.shade300, size: 30)),
                          labelText: "enter your email",
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.3)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Container(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 16.0),
                              margin: const EdgeInsets.only(right: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)),
                                  color: Colors.white),
                              child: Icon(Icons.lock,
                                  color: Colors.lightGreen.shade300, size: 30)),
                          labelText: "enter your password",
                          labelStyle:
                          TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                        child: Text("LOGIN",
                            style:
                                TextStyle(color: Colors.green, fontSize: 15))),
                  )
                ],
              ),
            ),
            Baseline(
              baseline: 200,
              baselineType: TextBaseline.alphabetic,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("create account".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text(" | ".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    Text("forgot password".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 15))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
