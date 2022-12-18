import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

import '../widgets/default_zego_widget.dart';

class VoiceGroupCallPage extends StatelessWidget {
  const VoiceGroupCallPage({Key? key, required this.callID}) : super(key: key);
  final String callID;

  @override
  Widget build(BuildContext context) {
    return DefaultZegoWidget(
      callID: callID,
      config: ZegoUIKitPrebuiltCallConfig.groupVoiceCall(),
    );
  }
}
