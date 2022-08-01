

import 'package:flutter/material.dart';


class Login1 extends StatelessWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 13,
            child: Stack(children: [
              Container(
                width: size.width,
                height: size.height * 0.45,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.orange],
                      end: Alignment.center,
                      begin: Alignment.topCenter,
                    ),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(100))),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                      height: size.height * 0.15,
                      child: Image.asset(
                        'assets/login/login_bao/logo.jpg',
                        fit: BoxFit.cover,
                      )),
                ]),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.5, top: size.height * 0.37),
                  child: const Text(
                    'Signup For Free',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ))
            ]),
          ),
          const Expanded(flex: 10, child: InputForm()),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Already a number? '),
                Text('SIGNIN',
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.bold))
              ],
            ),
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
    final heightSizedbox = size.height * 0.01;
    return Column(
      children: [
        const Input(hintText: 'Fullname', icon: Icons.person),
        SizedBox(
          height: heightSizedbox,
        ),
        const Input(hintText: 'Email', icon: Icons.email),
        SizedBox(
          height: heightSizedbox,
        ),
        const Input(hintText: 'Phone Number', icon: Icons.phone),
        SizedBox(
          height: heightSizedbox,
        ),
        const Input(hintText: 'Password', icon: Icons.key),
        SizedBox(
          height: size.height * 0.05,
        ),
        const ButtonSignup()
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
              maxHeight: size.height * 0.06, maxWidth: size.width * 0.9),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
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
      width: size.width * 0.9,
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
        'SIGNUP',
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      )),
    );
  }
}
