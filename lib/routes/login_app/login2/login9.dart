import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

// void main() {
//   runApp(const MaterialApp(home: Login9()));
// }
const List<String> images = [
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F1.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F2.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F3.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F4.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F5.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F6.jpg?alt=media',
  'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/img%2F7.jpg?alt=media',
];

class Login9 extends StatelessWidget {
  const Login9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
                  const Padding(
                    padding: EdgeInsets.only(top: kToolbarHeight),
                    child: Text(
                      "Beautiful App",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                Animator<double>(
                  triggerOnInit: true,
                  curve: Curves.easeIn,
                  tween: Tween<double>(begin: -1, end: 0), // ánh xạ
                  builder: (context, state, child) {
                    return FractionalTranslation(
                      translation: Offset(state.value, 0),
                      child: child,
                    );
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListView(
                      physics:
                          MediaQuery.of(context).viewInsets == EdgeInsets.zero
                              ? const NeverScrollableScrollPhysics()
                              : null,
                      padding: const EdgeInsets.all(32.0),
                      shrinkWrap: true,
                      children: [
                        const SizedBox(
                          height: kToolbarHeight,
                        ),
                        Text(
                          "Namaste!",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          "Welcome to this awesome app. We are so happy that you are using our app.",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                            suffixIcon: const Icon(
                              Icons.person,
                              color: Colors.blueGrey,
                            ),
                            hintText: "Username",
                            hintStyle: const TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 16.0,
                              horizontal: 32.0,
                            ),
                            suffixIcon: const Icon(
                              Icons.lock,
                              color: Colors.blueGrey,
                            ),
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        FlatButton(
                            onPressed: () {},
                            child: Text("Create new account"),
                            textColor: Colors.white),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
            RaisedButton(
              padding: const EdgeInsets.all(32.0),
              elevation: 0,
              textColor: Colors.white,
              color: Colors.deepOrange,
              child: Text("Continue".toUpperCase()),
              onPressed: () {},
            )
        ],
      ),
    );
  }
}
