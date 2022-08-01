import 'package:flutter/material.dart';

class Auth1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(alignment: AlignmentDirectional.center, children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
                foregroundDecoration:
                    BoxDecoration(color: Colors.pink.withAlpha(100)),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2Fb3.jpg?alt=media'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("existing members",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white),
                      child: Center(
                        child: Text("Login",
                            style: TextStyle(
                              color: Colors.pink,
                              fontSize: 20,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ]),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("or if you are new here",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.pink),
                    child: Center(
                      child: Text("Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("or continue with",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      )),
                  SizedBox(height: 10),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.red),
                      child: Center(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            //Icon(Icons.facebook),
                            Text("G",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            SizedBox(width: 5),
                            Text("Google",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.blue),
                      child: Center(
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(Icons.facebook, color: Colors.white, size: 25),
                            SizedBox(width: 5),
                            Text("Facebook",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                )),
                          ],
                        ),
                      ),
                    ),
                    // SignInButton(
                    //   Buttons.Google,
                    //   onPressed: () {},
                    //   text: "Google",
                    // )
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
