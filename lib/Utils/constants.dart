import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  static final rupeeSymbol = "\u20B9";
  static const String FEATURE_NOT_AVAILABLE = "Feature not available";
  static const String BOX_NAME = "app";
  static const String SOMETHING_WENT_WRONG = "Oops! something went wrong";

  ///gradients
  static List<Color> kitGradients = [
    Colors.white, //0
    Colors.black, //1
    Colors.transparent, //2
    const Color(0xffFFFAE7), //3 searchbar
    const Color(0xffF2F2F2), //4 chipcolor
    const Color(0xffFFFFFF), //5 price
    const Color(0xffFFFAE7), //6
    Colors.white10, //7
    const Color(0xff101010), //8
    const Color(0xff030303), //9
    const Color(0xff27AE60), //10
    const Color(0xffd7b100), //11
    const Color(0xffDB0000), //12
    const Color(0xff009f12), //13
    const Color(0xff08009b), //14
    const Color(0xff2b2b2b), //15
    const Color(0xff181818), //16
    const Color(0xff1C1C1C), //17
    Colors.white12, //18

    Color(0xFFD81B60), //19
    Colors.pink.shade50 //20
  ];

  ///ICON
  static const String GOOGLE_ICON = 'assets/images/google_logo.svg';

  ///image
  static const String DeskLive = 'assets/images/DeskLive.png';

  ///error
  static const String SOME_ERROR_OCCURRED = "Some error occurred.";

  ///dialog
  static const String CANCEL = "Cancel";
  static const String OK = "Ok";
  static const String YES = "Yes";
  static const String CLOSE = "Close";
  static const String UPDATE = "Update";
  static const String ORDER_CANCELLATION = "Confirm order cancellation?";

  ///settings
  static const String SETTINGS_TITLE = "Settings";
  static const String PRIVACY_POLICY = "Privacy policy";
  static const String SETTING_TERMS_CONDITION = "Terms & conditions";

  ///no internet
  static const String NO_INTERNET_TEXT = "No Internet Connection !!!";
  static const String INTERNET_CONNECTED = "Internet Connected !!!";

  ///validators
  static const String EMAIL_NOT_VALID = "Email is not valid";
  static const String USERNAME_NOT_VALID = "Username is not valid";
  static const String PASSWORD_LENGTH =
      "Password length should be greater than 5 chars.";
  static const String INVALID_MOBILE_NUM = " Invalid mobile number";
  static const String INVALID_NAME = "Invalid name";

  //Productshocase
}
