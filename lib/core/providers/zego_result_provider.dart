import 'package:flutter/material.dart';

class ZegoProvider extends ChangeNotifier {
  String callId = "";
  String userId = "";
  String userName = "";

  String invitedFriendId = "";
  bool isVideo = false;

  notify() {
    notifyListeners();
  }
}
