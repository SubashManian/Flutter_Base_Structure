import 'package:flutter/material.dart';
import 'package:flutterapp/res/index.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Landing Screen",
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                FlatButton(onPressed: (){
                  // var success = loginCall('testlock@yopmail.com', 'test@123', 'afeg23424t4', isAndroid()? 'android': 'ios');
                  // print(success);
                  Navigator.pushNamed(context, '/home');
                }, child: Text(strLogin)),
                RaisedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/register', arguments: 'Register new user');
                  },
                  child: Text(strRegister)),
              ]
            )
          ),
        )
      ),
    );
  }
}