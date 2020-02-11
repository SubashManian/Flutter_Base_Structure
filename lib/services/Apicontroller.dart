import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutterapp/services/Apiconstant.dart';

//GET METHOD
getApi(
  url,
  header,
  initialCallback,
  onCompletionCallBack,
  errorCallBack,
) async {
  var urlValue = BASE_URL + url;

  if (initialCallback != null) {
    initialCallback();
  }
  print("REQUEST URL: " + urlValue);
  // print("REQUEST PARAMS: " + params);
  print("REQUEST METHOD: GET");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(urlValue, headers: header);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    onCompletionCallBack(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
    errorCallBack(response.statusCode);
  }
}

//POST METHOD
postApi(
  url,
  params,
  header,
  initialCallback,
  onCompletionCallBack,
  errorCallBack,
) async {
  var urlValue = BASE_URL + url;

  if (initialCallback != null) {
    initialCallback();
  }

  print("REQUEST URL: " + urlValue);
  print("REQUEST PARAMS: " + params.toString());
  print("REQUEST METHOD: POST");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.post(urlValue, body: params, headers: header);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    onCompletionCallBack(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
    errorCallBack(response.statusCode);
  }
}

//PUT METHOD
putApi(
  url,
  params,
  header,
  initialCallback,
  onCompletionCallBack,
  errorCallBack,
) async {
  var urlValue = BASE_URL + url;

  if (initialCallback != null) {
    initialCallback();
  }

  print("REQUEST URL: " + urlValue);
  print("REQUEST PARAMS: " + params.toString());
  print("REQUEST METHOD: PUT");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.put(urlValue, body: params, headers: header);
  print('After Call' + response.toString());
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    onCompletionCallBack(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
    errorCallBack(response.statusCode);
  }
}

//DELETE METHOD
deleteApi(
  url,
  header,
  initialCallback,
  onCompletionCallBack,
  errorCallBack,
) async {
  var urlValue = BASE_URL + url;

  if (initialCallback != null) {
    initialCallback();
  }

  print("REQUEST URL: " + urlValue);
  print("REQUEST METHOD: DELETE");

  // Await the http get response, then decode the json-formatted response.
  var response = await http.delete(urlValue, headers: header);
  print('After Call' + response.toString());
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    onCompletionCallBack(jsonResponse);
  } else {
    print('Request failed with status: ${response.statusCode}.');
    errorCallBack(response.statusCode);
  }
}
