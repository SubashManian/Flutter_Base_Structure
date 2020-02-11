import 'package:flutter/material.dart';
import 'package:flutterapp/routes/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        // home: Login(),
        initialRoute: '/login',
        onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}