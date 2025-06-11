import 'package:caferat_app/src/common/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast {
  static Future<dynamic> show({
    required String msg,
    Color? backgroundColor,
    Color? textColor,
  }) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      fontSize: 14,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: backgroundColor ?? ColorLight.primary,
      textColor: textColor ?? Colors.white,
    );
  }
}
