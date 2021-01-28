import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class User with ChangeNotifier {
  static String userId;
  static String userName;
  static String authToken = null;

  User({authToken});

  void setAuthToken(String a) {
    authToken = a;
    notifyListeners();
  }
}
