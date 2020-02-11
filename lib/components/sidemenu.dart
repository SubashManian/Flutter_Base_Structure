import 'package:flutter/material.dart';
import 'package:flutterapp/res/index.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (
      Container(
          width: MediaQuery.of(context).size.width * 0.65,
          child: Drawer(
            child: ListView(
              children: <Widget> [
                DrawerHeader(
                  child: Center(
                    child: Image(image: user),
                  ), 
                  decoration: BoxDecoration(color: blue),
                ),
                ListTile(
                  title: Text(strProfile), 
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (_) => Profile()));
                    Navigator.popAndPushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  title: Text(strSetting), 
                  onTap: (){
                    Navigator.popAndPushNamed(context, '/settings');
                  },
                ),
              ]
            ),
          ),
      )
    );
  }
  
}