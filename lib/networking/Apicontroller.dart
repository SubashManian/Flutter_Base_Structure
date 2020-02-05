import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import './Apiconstant.dart';

getApi(
  url,
  header,
  initialCallback,
  onCompletionCallBack
) async {
  var urlValue = BASE_URL + url;

  if (initialCallback) {
    initialCallback();
  }
  print("REQUEST URL: " + urlValue);
  // print("REQUEST PARAMS: " + params);
  print("REQUEST METHOD: GET");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(urlValue, headers: header);
  print(response);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    onCompletionCallBack(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
    onCompletionCallBack(response.statusCode);
  }
}