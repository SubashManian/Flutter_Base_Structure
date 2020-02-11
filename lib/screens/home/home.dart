import 'package:flutter/material.dart';
import 'package:flutterapp/components/sidemenu.dart';
import 'package:flutterapp/res/index.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text(strHome),
        ),
        body: DefaultTabController(
          length: 3, 
          child: Scaffold(
            appBar: AppBar(
              leading: null,
              automaticallyImplyLeading: false,
              title: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Icon(Icons.directions_car,size: 50.0,),
                Icon(Icons.directions_transit,size: 50.0,),
                Icon(Icons.directions_bike,size: 50.0,),
              ],
            ),
          )
        )
      );
  }
}

// SafeArea(
//           child: Center(
//             child: RaisedButton(
//                   onPressed: null,
//                   child: Text(strDetail)
//                 ),
//           )
//         ),