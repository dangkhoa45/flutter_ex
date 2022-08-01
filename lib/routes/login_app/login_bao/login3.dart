import 'package:flutter/material.dart';


class Login3 extends StatelessWidget {
  const Login3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [
        Expanded(
          child: Head(),
          flex: 20,
        ),
        Expanded(
          child: InputForm(),
          flex: 7,
        ),
        Spacer(flex: 2,),
        Expanded(
          child: Button(),
          flex: 2,
        ),
        Spacer(
          flex: 2,
        )
      ],
    ));
  }
}

class InputForm extends StatelessWidget {
  const InputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightSizedbox = size.height * 0.03;
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4), //color of shadow
          spreadRadius: 1, //spread radius
          blurRadius: 10, // blur radius
          offset: Offset(0, 9), // changes position of shadow
          //first paramerter of offset is left-right
          //second parameter is top to down
        ),
      ],
      borderRadius: BorderRadius.circular(30)
      
      ),
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

class Head extends StatelessWidget {
  const Head({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizeH = size.height;
    final sizeW = size.width;
    return Stack(children: [
      Container(
        height: size.height * 0.55,
        width: size.width,
        alignment:
            Alignment.lerp(Alignment.topCenter, Alignment.bottomCenter, 0.7),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/03/30/12/37/jellyfish-698521__340.jpg'),
                fit: BoxFit.fill),
            borderRadius:
                BorderRadius.only(bottomRight: Radius.elliptical(400, 300))),
        child: const Text(
          'Login',
          style: TextStyle(
              fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
        left: sizeW * 0.1,
        top: sizeH * 0.05,
        child: Container(
          height: size.height * 0.15,
          width: size.width * 0.2,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2019/12/24/08/54/flying-dandelions-4716287__340.png'))),
        ),
      ),
      Positioned(
        left: sizeW * 0.38,
        width: sizeW * 0.2,
        height: sizeH * 0.2,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/08/25/07/30/red-1618916__340.png'))),
        ),
      ),
      Positioned(
        right: sizeW * 0.15,
        top: sizeH * 0.05,
        width: sizeW * 0.2,
        height: sizeH * 0.2,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2019/10/22/07/52/dandelions-4567966__340.png'))),
        ),
      ),
    ]);
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 199, 115, 248),
            Color.fromARGB(255, 211, 155, 221),
            Color.fromARGB(255, 228, 195, 243)
          ],
        ),
      ),
      child: const Center(
          child: Text(
        'Login',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
      )),
    );
  }
}
