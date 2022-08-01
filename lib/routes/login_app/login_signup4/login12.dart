import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoginApp12 extends StatefulWidget {
  const LoginApp12({Key? key}) : super(key: key);

  @override
  State<LoginApp12> createState() => _LoginApp12State();
}

class _LoginApp12State extends State<LoginApp12> {
  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    //Size of pink container
    final sizeContainer1 = sizeH * 0.7;
    //size of white container
    final sizeContainer2 = sizeH - sizeContainer1;
    //Padding in mid pink container and white container
    final midContaier = sizeH * 0.65;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            /*Pink container*/
            Stack(
              children: [
                Container(
                  height: sizeContainer1,
                  color:
                      const Color.fromARGB(255, 228, 143, 221).withOpacity(0.9),
                ),
                Container(
                  height: sizeContainer1,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 228, 143, 221),
                      Color.fromARGB(255, 125, 141, 233)
                    ], begin: Alignment.bottomLeft, end: Alignment.topRight),
                    color: Colors.indigo,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(80)),
                  ),
                ),
                /*Input column*/
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: sizeH * 0.1,
                        left: sizeW * 0.05,
                        right: sizeW * 0.05),
                    child: Column(children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: sizeH * 0.08,
                        child: Material(
                          elevation: 10,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          child: TextFormField(
                            decoration: inputDesign('Username', Icons.person),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: sizeH * 0.08,
                        child: Material(
                          elevation: 20,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          child: TextFormField(
                            obscureText: true,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: inputDesign('Password', Icons.lock),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: sizeW * 0.9,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.pink,
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(40))),
                                elevation: 10),
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            )),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: sizeW * 0.9,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot your password?',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 12),
                            )),
                      )
                    ]),
                  ),
                )
              ],
            ),
            /*White container*/
            Padding(
              padding: EdgeInsets.only(top: sizeContainer1),
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: sizeContainer2,
                  color: Colors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'or, connect with',
                          style: TextStyle(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //Facebook button
                            SizedBox(
                              width: sizeW * 0.4,
                              child: ElevatedButton(
                                  style: styleButtonNav(Colors.blue),
                                  onPressed: () {},
                                  child: const Text('Facebook')),
                            ),
                            //Twitter button
                            SizedBox(
                              width: sizeW * 0.4,
                              child: ElevatedButton(
                                  style: styleButtonNav(Colors.indigo),
                                  onPressed: () {},
                                  child: const Text('Twitter')),
                            )
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                'Dont have an account?',
                                style: TextStyle(fontSize: 12),
                              ),
                              GestureDetector(
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ])
                      ]),
                ),
              ),
            ),
            /*Wave animation*/
            ContainerAnimation(sizeW),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

InputDecoration inputDesign(String hintText, IconData icon) {
  return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      hintText: hintText,
      prefixIcon: Icon(
        icon,
        size: 18,
        color: Colors.grey,
      ),
      hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7), fontSize: 12),
      //Icon suffix
      suffix: Container(
          height: 20,
          width: 20,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.grey),
          child: const Icon(Icons.check, size: 18, color: Colors.white54)),
      //Border of Input
      enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(color: Colors.white)),
      focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          borderSide: BorderSide(color: Colors.white)));
}

ButtonStyle styleButtonNav(MaterialColor color) {
  return ElevatedButton.styleFrom(
      primary: color,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))),
      elevation: 10);
}

//Animation
class WaveContainer extends AnimatedWidget {
  final AnimationController _controller;
  final Animation<double> _tween;
  final double _sizeW;
  const WaveContainer({required AnimationController controller, required Animation<double> tween, required double sizeW})
      : _controller = controller,
      _tween = tween,
      _sizeW = sizeW,
        super(listenable: controller);
  //sizeH * 0.65
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.65,
      left: _tween.value,
      child: ClipPath(
        clipper: WaveClip(),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width*2,
          decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 148, 101, 230),
                      Color.fromARGB(255, 165, 137, 245)
                    ]),
                  ),
        ),
      ),
    );
  }
}
//Animation State
class ContainerAnimation extends StatefulWidget {
  final double _sizeW;
  const ContainerAnimation(this._sizeW,{Key? key}) : super(key: key);
  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _tween;
  
  @override
  void initState(){
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 3),vsync: this)..repeat();
    _tween = Tween<double>(begin: -widget._sizeW,end: 0).animate(_controller);
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return WaveContainer(controller: _controller,tween: _tween,sizeW: widget._sizeW);
  }
}
//Wave clip
class WaveClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var h = size.height;
    var w = size.width;
    path.lineTo(0, h);
    path.quadraticBezierTo(w / 2, h*2 / 5, w, h);
    path.lineTo(w, 0);
    path.quadraticBezierTo(w / 2, h*2 / 5, 0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
