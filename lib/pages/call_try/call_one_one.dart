import 'package:flutter/material.dart';
import 'package:hellozegocloud/core/constants/secret_keys.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallOneOne extends StatelessWidget {
  const CallOneOne({required this.callId, required this.userId, Key? key})
      : super(key: key);

  final String callId;
  final String userId;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltCall(
        appID: SecretConstants().appId,
        appSign: SecretConstants().appSign,
        userID: userId,
        userName: userId,
        callID: callId,
        config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
          ..onOnlySelfInRoom = (context) {
            Navigator.of(context).pop();
          },
      ),
    );
  }
}
