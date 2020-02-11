import 'package:flutter/material.dart';
import 'package:flutterapp/res/index.dart';

class Register extends StatelessWidget {
  final String data;

  Register({
    Key key,
    @required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Register Screen",
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: white,
            ),  onPressed: (){Navigator.pop(context);}
          ),
          title: Text(strRegister),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.settings,
                color: white
              ),
              onPressed: null,
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(data),
              RaisedButton(onPressed: (){Navigator.pop(context);}, child: Text(strBack)),
            ],
          )
        )
      ),
    );
  }
}