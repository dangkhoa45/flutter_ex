import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routeProfile4.dart';

void main() => runApp(const MaterialApp(home: NavProfile4(),debugShowCheckedModeBanner: false));

// 1.
class NavProfile4 extends StatelessWidget {
  const NavProfile4({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Person>(
          create: (context) => Person(),),
      ],
      child: MaterialApp(
        onGenerateTitle: (context) => "Profile 4",
        initialRoute: RouteGenerator.profile12, // 2.
        onGenerateRoute: RouteGenerator.generateRoute,
        // Hides the debug stripe on the top-right corner
        // which might be annoying to see!
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Person{
  String name = 'Jimmy Smith';
  String job = 'Developer';
  String email = 'aloalo1234@gmail.com';
  String address = 'Old York';
  String phone = '+84 817 283 374';
  String about ='Na naN nả nả nà na ?';
  String website = 'javaz.com';
  String avatar = 'assets/nhan/image1.jpg';
  String backgroundAvatar = 'assets/nhan/bag.jpg';
}