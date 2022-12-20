import 'package:flutter/widgets.dart';

class ZegoProvider extends ChangeNotifier {
  String callId = "";

  notify() {
    notifyListeners();
  }
}
