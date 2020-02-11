import 'package:flutter/material.dart';
import 'package:flutterapp/components/sidemenu.dart';
import 'package:flutterapp/res/index.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Profile Screen",
      home: Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(strSetting),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: Text(strBack)
          ),
        ),
      ),
    );
  }
}