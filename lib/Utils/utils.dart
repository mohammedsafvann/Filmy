import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widget/build_cancel_alert_box.dart';
import '../widget/build_text_button_widget.dart';
import '../widget/build_text_widget.dart';
import 'constants.dart';

///it contain common functions
class Utils {}

Size screenSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double screenHeight(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).height / dividedBy;
}

double screenWidth(BuildContext context, {double dividedBy = 1}) {
  return screenSize(context).width / dividedBy;
}

Future<dynamic> push(BuildContext context, Widget route) {
  return Navigator.push(
      context, MaterialPageRoute(builder: (context) => route));
}

void pop(BuildContext context, String s) {
  return Navigator.pop(context);
}

Future<dynamic> pushAndRemoveUntil(
    BuildContext context, Widget route, bool goBack) {
  return Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context) => route), (route) => goBack);
}

Future<dynamic> pushAndReplacement(BuildContext context, Widget route) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => route));
}

///common toast
void showToast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
  );
}

void cancelAlertBox(
    {context,
    msg,
    text1,
    text2,
    route,
    double? insetPadding,
    double? contentPadding,
    double? titlePadding}) {
  showGeneralDialog(
      context: context,
      barrierDismissible: false,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withOpacity(0.8),
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (BuildContext buildContext, Animation animation,
          Animation secondaryAnimation) {
        return CancelAlertBox(
          title: msg,
          text1: text1,
          text2: text2,
          route: route,
          contentPadding: contentPadding!,
          titlePadding: titlePadding!,
          insetPadding: insetPadding!,
        );
      });
}

void showAlert(context, String msg) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text(msg),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          TextButton(
            child: const Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void removeItemAlert(
  BuildContext context, {
  String? titleMsg,
  String? contentMsg,
  String? msgCancel,
  String? msgOk,
  Function? onPressedOK,
  Function? onPressedCancel,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        shape: ShapeBorder.lerp(
            const RoundedRectangleBorder(), const RoundedRectangleBorder(), 1),
        backgroundColor: Constants.kitGradients[0],
        title: BuildTextWidget(text: titleMsg ?? " "),
//        content: new Text("Alert Dialog body"),
        content: BuildTextWidget(text: contentMsg ?? " "),
        actions: <Widget>[
          BuildTextButtonWidget(
              text: msgOk ?? " ",
              color: Constants.kitGradients[1],
              fontWeight: FontWeight.w400,
              onPress: () {
                onPressedOK!();
              }),
          //usually buttons at the bottom of the dialog
          BuildTextButtonWidget(
              text: msgCancel ?? " ",
              color: Constants.kitGradients[1],
              fontWeight: FontWeight.w400,
              onPress: () {
                onPressedCancel!();
              }),
        ],
      );
    },
  );
}

///common toast
void showToastLong(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
  );
}

void showToastConnection(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
  );
}
