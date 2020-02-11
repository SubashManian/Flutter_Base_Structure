// import 'package:flutterapp/services/index.dart';

// loginCall(String email, password, deviceToken, deviceType) {
//   var response, map = new Map<String, dynamic>();
//   map['email'] = email;
//   map['password'] = password;
//   map['deviceToken'] = deviceToken;
//   map['deviceType'] = deviceType;
//   postApi(LOGINAPI, map, null, null, (data) => {
//     print(data['status']),
//     var status = data['status'],
//     if (data.status.status == 200) {
//       response = data.user
//     } else {
//       response = data.status.msg
//     }
//   }, (err) => {
//     print(err),
//     response = err
//   });
//   return response;
//     // getApi(PRODUCTLIST, null, null, (data) => {
//       // print('main screen' + data.toString())
//     // })
// }