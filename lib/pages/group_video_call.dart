import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../widgets/default_zego_widget.dart';

String userID = Random().nextInt(10000).toString();

class GroupVideoCall extends StatelessWidget {
  const GroupVideoCall({Key? key, required this.callID}) : super(key: key);

  final String callID;

  @override
  Widget build(BuildContext context) {
    return DefaultZegoWidget(
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall(),
    );
  }
}
