import 'package:flutter/material.dart';


class LoginApp13 extends StatelessWidget {
  const LoginApp13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeH = MediaQuery.of(context).size.height;
    final sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          /*Background image */
          Container(
            height: sizeH,
            width: sizeW,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login/loginNhan/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          /*Background opacity */
          Container(
            height: sizeH,
            width: sizeW,
            color: Colors.black.withOpacity(0.6),
          ),
          /*Login box*/
          Positioned(
              left: sizeW / 15,
              top: sizeH / 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'WELCOME BACK',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const Text(
                    'Sign in for continue',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: sizeW * 0.8,
                    child: TextFormField(
                      decoration: inputBoxDesign('Username'),
                    ),
                  ),
                  SizedBox(
                    width: sizeW * 0.8,
                    child: TextFormField(
                      decoration: inputBoxDesign('Password'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Forgot your password?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                      width: sizeW * 0.8,
                      child: ElevatedButton(
                          onPressed: () {},
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                          child: const Text("SIGN IN",
                              style: TextStyle(color: Colors.black)))),
                  SizedBox(
                    width: sizeW * 0.8,
                    child: Center(
                      child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Dont have account? SIGN UP",
                        style: TextStyle(color: Colors.white),
                      ),
                      ),
                    ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}

InputDecoration inputBoxDesign(String hintContent) {
  return InputDecoration(
      hintText: hintContent,
      hintStyle: const TextStyle(color: Colors.white70),
      enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white54)));
}
