import 'package:hive/hive.dart';

import 'constants.dart';

class AppHive {
  // void main (){}

  // void openBox()async{
  //   await Hive.openBox(Constants.B,OX_NAME);
  //
  // }
  static const String _USER_ID = "user_id";
  static const String _NAME = "name";
  static const String _TOKEN = "token";
  static const String _EMAIL = "email";
  static const String _PREFERENCE = "preferenceid";
  static const String _LATITUDE = "longitude";
  static const String _XUSER = "newuserid";
  static const String _PASSWORD = "userpassword";
  static const String _FCMTOKEN = "fcm_token";
  static const String _ISLOGGEDIN = "is_logged_in";
  static const String _DOC_ID = "user_docId";

  void hivePut({String? key, String? value}) async {
    await Hive.box(Constants.BOX_NAME).put(key, value);
  }

  String hiveGet({String? key}) {
    // openBox();
    return Hive.box(Constants.BOX_NAME).get(key);
  }

  void hivePutBool({String? key, bool? value}) async {
    await Hive.box(Constants.BOX_NAME).put(key, value);
  }

  bool hiveGetBool({String? key}) {
    return Hive.box(Constants.BOX_NAME).get(key) ?? false;
  }

  putUserId({String? userId}) {
    hivePut(key: _USER_ID, value: userId);
  }

  String getUserId() {
    return hiveGet(key: _USER_ID);
  }

  putUserPassword({String? email}) {
    hivePut(key: _PASSWORD, value: email);
  }

  String getUserPassword() {
    return hiveGet(key: _PASSWORD);
  }

  putName({String? name}) {
    hivePut(key: _NAME, value: name);
  }

  String getName() {
    return hiveGet(key: _NAME);
  }

  putToken({String? token}) {
    hivePut(key: _TOKEN, value: token);
  }

  String getToken() {
    return hiveGet(key: _TOKEN);
  }

  String getEmail() {
    return hiveGet(key: _EMAIL);
  }

  putEmail(String value) {
    return hivePut(key: _EMAIL, value: value);
  }

  putPreference(String value) {
    return hivePut(key: _PREFERENCE, value: value);
  }

  String getPreferenceId() {
    return hiveGet(key: _PREFERENCE);
  }

  putXUser(String value) {
    return hivePut(key: _XUSER, value: value);
  }

  getXUser() {
    return hiveGet(
      key: _XUSER,
    );
  }

  putFcmToken({String? value}) {
    return hivePut(key: _FCMTOKEN, value: value);
  }

  getFcmToken() {
    return hiveGet(
      key: _FCMTOKEN,
    );
  }

  putIsLoggedIn({bool? value}) {
    return hivePutBool(key: _ISLOGGEDIN, value: value);
  }

  getIsLoggedIn() {
    return Hive.box(Constants.BOX_NAME).get(_ISLOGGEDIN);
  }

  putUserDocId({String? docId}) {
    hivePut(key: _DOC_ID, value: docId);
  }

  getUserDocId() {
    return hiveGet(key: _DOC_ID);
  }

  AppHive();
}
