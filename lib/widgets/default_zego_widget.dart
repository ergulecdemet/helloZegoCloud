import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hellozegocloud/core/constants/secret_keys.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

String userID = Random().nextInt(10000).toString();
SecretConstants _constants = SecretConstants();

class DefaultZegoWidget extends StatelessWidget {
  const DefaultZegoWidget({
    Key? key,
    required this.callID,
    required this.config,
  }) : super(key: key);

  final String callID;
  final ZegoUIKitPrebuiltCallConfig config;

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID: _constants
          .appId, // **Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign: _constants
          .appSign, // **Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: userID,
      userName: 'user_$userID',
      callID: callID,

      config: config,
    );
  }
}
