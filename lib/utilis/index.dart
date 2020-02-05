import 'dart:io';

import 'package:flutter/material.dart';

getDevicewidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

getDeviceheight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

getheightwithoutsafeArea(BuildContext context) {
  // height without SafeArea
  var padding = MediaQuery.of(context).padding;
  var height = MediaQuery.of(context).size.height;
  return height - padding.top - padding.bottom;
}

getheightwithoutstatusBar(BuildContext context) {
  // height without status bar
  var padding = MediaQuery.of(context).padding;
  var height = MediaQuery.of(context).size.height;
  return height - padding.top;
}

getheightwithoutStatusToolBar(BuildContext context) {
  // height without status and toolbar
  var padding = MediaQuery.of(context).padding;
  var height = MediaQuery.of(context).size.height;
  return height - padding.top - kToolbarHeight;
}

isEmpty(text) {
  return (
      text.trim().length == 0 ||
      text == null ||
      text == "null" ||
      text == ""
    );
}

isValidPassword(text) {
  Pattern pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = new RegExp(pattern);
  return regExp.hasMatch(text);
}

isAndroid() {
  return (Platform.isAndroid);
}
