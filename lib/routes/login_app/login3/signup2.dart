import 'package:flutter/material.dart';

class Signup2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  height: 20,
                  width: 70,
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.yellow,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Sign Up",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Confirm Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text:
                            'By clicking Sign Up you agree to the following ',style: TextStyle(
                          fontSize: 15,color: Colors.black)
                      ),
                      TextSpan(
                          text: 'Terms and Conditions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.indigo)),
                          TextSpan(
                              text:
                              ' withour reservations',style: TextStyle(
                              fontSize: 15,color: Colors.black)
                          ),
                    ]
                        )),
                  ),
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      width: 200,
                      padding: EdgeInsets.all(15),
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                        color: Colors.yellow,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign In   ".toUpperCase(),
                            style: TextStyle(fontSize: 25),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 28,
                          )
                        ],
                      )),
                ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                decoration: new BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "Google",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                decoration: new BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  "Google",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
