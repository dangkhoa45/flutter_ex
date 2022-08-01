import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
  home: Login5()
));}


class Login5 extends StatelessWidget {
  const Login5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey.shade300,
      child: Stack(
        children: [
          CustomPaint(
                  size: MediaQuery.of(context).size,
                  painter: RPSCustomPainter(),
                ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: Row(
                mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.keyboard_arrow_left, color: Colors.black,),
                Text('Back', style: TextStyle(color: Colors.black),)
              ],
            ),),
            body: Column(
              children: [
                SizedBox(child: Image.asset('assets/login/login_bao/icon.png'), width: 100,height: 100,),
                Container(
                  height: size.height*0.6,
                  
                  child: Column(
                  children: [
                    Spacer(),
                    Text("Hello", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                    Text('Sign in your account', style: TextStyle(fontSize: 25,),),
                    SizedBox(height: size.height*0.05,),
                    InputForm()
                  ],
                )),
                
                RichText(
                   
                  text: TextSpan(children: [
                  TextSpan( text: "Don't have an account? ", style: TextStyle(color: Colors.black)),
                  TextSpan( text: ' SIGNUP',style: TextStyle(color: Colors.orangeAccent))
                ]))
              ],
            )
          ),
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
    final heightSizedbox = size.height * 0.01;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Input(hintText: 'Email', icon: Icons.email),
        SizedBox(
          height: heightSizedbox,
        ),
        const Input(hintText: 'Password', icon: Icons.key),
         SizedBox(
          height: heightSizedbox,
        ),
        Text('Forgot password'),
        SizedBox(
          height: size.height * 0.05,
        ),
      ButtonSignup(),
      SizedBox(height: size.height*0.05,),
      Text('Or login using social media'),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: (){},icon: Icon(FontAwesomeIcons.facebookF, color: Colors.blue,),),
          IconButton(onPressed: (){},icon: Icon(FontAwesomeIcons.twitter),),
        ],
      ),
      
      ],
    );
  }
}

class Input extends StatelessWidget {
  final IconData icon;
  final String hintText;
  const Input({Key? key, required this.hintText, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return TextField(
      decoration: InputDecoration(
          constraints: BoxConstraints(
              maxHeight: size.height * 0.12, maxWidth: size.width * 0.9),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          prefixIcon: Icon(icon),
          hintText: hintText),
    );
  }
}

class ButtonSignup extends StatelessWidget {
  const ButtonSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.3,
      height: size.height *0.08,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.redAccent, Colors.orange],
            end: Alignment.center,
            begin: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(40),
          color: Colors.orange),
      child: const Center(
          child: Text(
        'LOGIN',
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}



// I coppied on Github

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_0.shader = ui.Gradient.linear(
        Offset(size.width * 0.64, size.height * 0.11),
        Offset(size.width, size.height * 0.11),
        [Color(0x55e17e51), Color(0x99cd5c0b)],
        [0.00, 1.00]);

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.64, 0);
    path_0.quadraticBezierTo(size.width * 0.74, size.height * 0.09,
        size.width * 0.79, size.height * 0.08);
    path_0.cubicTo(size.width * 0.74, size.height * 0.09, size.width * 0.69,
        size.height * 0.14, size.width * 0.71, size.height * 0.17);
    path_0.quadraticBezierTo(size.width * 0.72, size.height * 0.19,
        size.width * 0.79, size.height * 0.21);
    path_0.quadraticBezierTo(
        size.width * 0.93, size.height * 0.24, size.width, size.height * 0.21);
    path_0.quadraticBezierTo(size.width, size.height * 0.16, size.width, 0);
    path_0.lineTo(size.width * 0.64, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);

    Paint paint_1 = new Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_1.shader = ui.Gradient.linear(
        Offset(size.width * 0.64, size.height * 0.12),
        Offset(size.width, size.height * 0.12),
        [Color(0x6ade8146), Color(0x87b75b0a)],
        [0.00, 1.00]);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.64, size.height * 0.08);
    path_1.quadraticBezierTo(size.width * 0.68, size.height * 0.15,
        size.width * 0.76, size.height * 0.13);
    path_1.cubicTo(size.width * 0.81, size.height * 0.15, size.width * 0.71,
        size.height * 0.22, size.width * 0.74, size.height * 0.24);
    path_1.quadraticBezierTo(
        size.width * 0.81, size.height * 0.27, size.width, size.height * 0.18);
    path_1.lineTo(size.width, 0);
    path_1.quadraticBezierTo(size.width * 0.83, 0, size.width * 0.77, 0);
    path_1.quadraticBezierTo(size.width * 0.66, size.height * 0.02,
        size.width * 0.64, size.height * 0.08);
    path_1.close();

    canvas.drawPath(path_1, paint_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}