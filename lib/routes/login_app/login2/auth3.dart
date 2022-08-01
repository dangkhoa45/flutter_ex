import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Auth3_1 extends StatefulWidget {
  @override
  _Auth3_1 createState() => _Auth3_1();
}

class _Auth3_1 extends State<Auth3_1> {
  late bool formVisible;
  int? _formsIndex;

  @override
  void initState() {
    super.initState();
    formVisible = false;
    _formsIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login/room4.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.black54,
              child: Column(
                children: <Widget>[
                  const SizedBox(height: kToolbarHeight + 40),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Welcome",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Welcome to this awesome login app. \nYou are awesome.",
                          style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text("Login"),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 1;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: RaisedButton(
                          color: Colors.grey.shade700,
                          textColor: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text("Singup"),
                          onPressed: () {
                            setState(() {
                              formVisible = true;
                              _formsIndex = 2;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: BorderSide(color: Colors.red),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Continue with Google",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 100),
              child: (!formVisible)
                  ? null
                  : Container(
                      color: Colors.black54,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                textColor: _formsIndex == 1
                                    ? Colors.white
                                    : Colors.black,
                                color: _formsIndex == 1
                                    ? Colors.red
                                    : Colors.white,
                                child: Text("Login"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      _formsIndex = 1;
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RaisedButton(
                                textColor: _formsIndex == 2
                                    ? Colors.white
                                    : Colors.black,
                                color: _formsIndex == 2
                                    ? Colors.red
                                    : Colors.white,
                                child: Text("Signup"),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                onPressed: () {
                                  setState(
                                    () {
                                      _formsIndex = 2;
                                    },
                                  );
                                },
                              ),
                              const SizedBox(width: 10.0),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    formVisible = false;
                                  });
                                },
                                icon: Icon(Icons.clear),
                                color: Colors.white,
                              )
                            ],
                          ),
                          Container(
                            child: AnimatedSwitcher(
                              duration: Duration(milliseconds: 200),
                              child:
                                  _formsIndex == 1 ? LoginForm() : SignupForm(),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: "Enter email",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Cofirm password",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.red,
            textColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Text("Signup"),
          ),
        ],
      ),
    );
  }
}
