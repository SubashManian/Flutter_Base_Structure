import 'package:flutter/material.dart';
import 'package:flutterapp/components/sidemenu.dart';
import 'package:flutterapp/screens/login/login.dart';
import 'package:flutterapp/screens/register/register.dart';
import 'package:flutterapp/screens/home/home.dart';
import 'package:flutterapp/screens/profile/profile.dart';
import 'package:flutterapp/screens/settings/settings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/register':
        // Validation of correct data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => Register(
                  data: args,
                ),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      case '/drawer':
        return MaterialPageRoute(builder: (_) => MyDrawer());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/settings':
        return MaterialPageRoute(builder: (_) => Settings());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
