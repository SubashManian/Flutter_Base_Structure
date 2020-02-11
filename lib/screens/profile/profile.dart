import 'package:flutter/material.dart';
import 'package:flutterapp/components/sidemenu.dart';
import 'package:flutterapp/res/index.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Profile Screen",
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(strProfile),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.popAndPushNamed(context, '/home');
            }, 
            child: Text(strBack)
          ),
        ),
      ),
    );
  }
}