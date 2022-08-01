import 'package:flutter/material.dart';


class Login4 extends StatelessWidget {
  const Login4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Head(),
    );
  }
}

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.orange,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: size.height*0.1, left: size.width*0.05),
              child: Column(
                children: const [Text("Login", style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold)), Text("Welcome Back",style: TextStyle(color: Colors.white, fontSize: 30),)],
              ),
            ),
            const Spacer(),
           const Body()
          ],
        ));
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double cicrula = 100;
    return Container(
      width: size.width,
      height: size.height * 0.7,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(cicrula),
              topRight: Radius.circular(cicrula)),
          color: Colors.white),
      child: Column(
        children:  [
         const Spacer(),
         const Expanded(
            child: InputForm(),
            flex: 6,
          ),
         const Spacer(
            flex: 2,
          ),
         const Expanded(flex: 1, child: Text('Forgot Password?')),
         const Spacer(),
          Expanded(
              flex: 2,
              child: Button(
                text: 'Login',
                color: Colors.deepOrange,
                width: size.width * 0.5,
              )),
         const Spacer(
            flex: 2,
          ),
         const Expanded(child: Text('Continue with social media')),
         const Spacer(),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Button(
                  text: 'Facebook',
                  color: Colors.blue,
                  width: size.width * 0.3,
                ),
                Button(
                  text: 'Github',
                  color: Colors.black,
                  width: size.width * 0.3,
                )
              ],
            ),
          ),
         const Spacer(
            flex: 4,
          )
        ],
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightSizedbox = size.height * 0.03;
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4), //color of shadow
              spreadRadius: 1, //spread radius
              blurRadius: 10, // blur radius
              offset: Offset(0, 9), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
          ],
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Input(hintText: 'Email or Phone number'),
          Input(hintText: 'Password'),
        ],
      ),
    );
  }
}

class Input extends StatelessWidget {
  final String hintText;
  const Input({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextField(
      decoration: InputDecoration(
          constraints: BoxConstraints(
              maxHeight: size.height * 0.09, maxWidth: size.width * 0.8),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none),
          hintText: hintText),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  const Button(
      {Key? key, required this.color, required this.text, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: width,
      height: size.height * 0.07,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
      )),
    );
  }
}
