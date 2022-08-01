import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';



class LoginApp10 extends StatelessWidget {
  const LoginApp10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(221, 49, 48, 48),
        height: sizeH,
        child: Padding(
          padding: EdgeInsets.only(top: sizeH * 1 / 10),
          child: Column(children: [
            /*Rocket image*/
            SizedBox(
                width: sizeW,
                height: sizeH * 4 / 10,
                child: Image.asset('assets/login/loginNhan/rocket.png')),
            /*Column of InputForm*/
            const SizedBox(height: 30),
            SizedBox(
              width: sizeW * 0.8,
              child: TextFormField(
                  decoration: inputBoxDesign(Icons.mail, 'Email Address:')),
            ),
            Divider(
              color: Colors.grey,
              indent: sizeW * 0.05,
              endIndent: sizeW * 0.05,
            ),
            SizedBox(
              width: sizeW * 0.8,
              child: TextFormField(
                  decoration: inputBoxDesign(Icons.lock, 'Password:')),
            ),
            Divider(
              color: Colors.grey,
              indent: sizeW * 0.05,
              endIndent: sizeW * 0.05,
            ),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                width: sizeW * 0.8,
                child: const Center(child: Text('Login')),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(primary: Colors.white54),
                child: SizedBox(
                    width: sizeW * 0.8,
                    child: const Center(child: Text('Forgort your password?'))))
          ]),
        ),
      ),
    ));
  }
}

InputDecoration inputBoxDesign(IconData iconOfInput, String hintContent) {
  return InputDecoration(
      icon: Icon(
        iconOfInput,
        color: Colors.white30,
      ),
      hintText: hintContent,
      hintStyle: const TextStyle(color: Colors.white70),
      border: InputBorder.none);
}
