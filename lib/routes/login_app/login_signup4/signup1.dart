import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MaterialApp(
    home: SignUpApp1(),
    debugShowCheckedModeBanner: false,
  ));
}

class SignUpApp1 extends StatelessWidget {
  const SignUpApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          /*APP LOGO*/
          Padding(
            padding: EdgeInsets.only(left: sizeW * 1 / 3),
            child: SizedBox(
                width: sizeW * 1 / 3,
                height: sizeH * 3 / 10,
                child: Image.asset('assets/login/loginNhan/origami.png')),
          ),
          /*White box (login box) */
          Padding(
            padding: paddingLoginBox(sizeW, sizeH),
            child: ClipPath(
              clipper: LoginBox(),
              child: Container(
                height: sizeH * 0.6,
                width: sizeW * 0.9,
                color: Colors.white,
              ),
            ),
          ),
          /*Children of the login box with column*/
          Padding(
            padding: paddingLoginBox(sizeW, sizeH),
            child: SizedBox(
                width: sizeW * 0.9,
                height: sizeH * 0.6,
                child: Column(children: [
                  ClipOval(
                      child: Container(
                          height: 60,
                          width: 60,
                          color: Colors.blue.shade300,
                          child: Icon(Icons.person,color:Colors.grey.shade100))),
                  SizedBox(height: sizeH * 0.6 * 1 / 8),
                  SizedBox(
                    width: sizeW * 0.9 * 0.9,
                    child: TextFormField(
                      decoration: inputBoxDesign(Icons.mail, 'Email address'),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: sizeW * 0.9 * 0.9,
                    child: TextFormField(
                      decoration: inputBoxDesign(Icons.lock, 'Password'),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    width: sizeW * 0.9 * 0.9,
                    child: TextFormField(
                      decoration: inputBoxDesign(Icons.lock, 'Confirm Password'),
                    ),
                  )
                ])),
          ),
          /*Two button login and sign up*/
          Padding(
            padding: EdgeInsets.only(top: sizeH * 0.85),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        //Border radius of login button
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0)))),
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
    backgroundColor: Colors.blue.shade100,
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      mini: true,
      child: const Icon(Icons.arrow_back),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}

InputDecoration inputBoxDesign(IconData iconOfInput, String hintContent) {
  return InputDecoration(
      icon: Icon(
        iconOfInput,
        color: Colors.blue,
      ),
      hintText: hintContent,
      hintStyle: TextStyle(color: Colors.blue.shade200),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue.shade300)));
}

class LoginBox extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final h = size.height;
    final w = size.width;
    final h2 = h * 0.2;
    Path path = Path();
    path.moveTo(0, h2);
    //Radius bottom left
    path.lineTo(0, h - 50);
    path.quadraticBezierTo(0, h, 50, h);
    //Radius bottom right
    path.lineTo(w - 50, h);
    path.quadraticBezierTo(w, h, w, h - 50);
    //Radius top right
    path.lineTo(w, 30);
    path.quadraticBezierTo(w, 0, w - 30, 0);
    //Radius top left
    path.lineTo(20, h2);
    path.quadraticBezierTo(0, h2 + 20, 0, h2 + 40);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

EdgeInsets paddingLoginBox(var sizeW, var sizeH) {
  return EdgeInsets.only(left: sizeW * 0.05, top: sizeH * 0.3);
}
