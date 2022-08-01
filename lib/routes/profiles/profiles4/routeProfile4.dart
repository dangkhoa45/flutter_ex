import 'package:flutter/material.dart';
import 'package:flutter_exercises/routes/profiles/profiles4/routes/profile12.dart';
import 'package:flutter_exercises/routes/profiles/profiles4/routes/profile3.dart';
import 'package:flutter_exercises/routes/profiles/profiles4/routes/profile8.dart';
// 1.
class RouteGenerator {
// 2.
  static const String profile12 = '/';
  static const String profile3 = '/profile3';
  static const String profile8 = '/profile8';
// 3.
  RouteGenerator._() {}
// 3.
  static Route<dynamic> generateRoute(RouteSettings settings) {
//4.
    switch (settings.name) {
      case profile12:
// .5
        return MaterialPageRoute(
          builder: (_) => const Profile12(),
        );
      case profile3:
        return MaterialPageRoute(
          builder: (_) => const Profile3(),
        );
        case profile8:
        return MaterialPageRoute(
          builder: (_) => const Profile8(),
        );
      default:
        throw FormatException("Route not found");
    }
  }
}

// 5.
class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
