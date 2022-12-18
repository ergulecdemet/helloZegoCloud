import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

import '../../core/constants/secret_keys.dart';

class VideoConferencePage extends StatelessWidget {
  final String conferenceID;

  const VideoConferencePage({
    Key? key,
    required this.conferenceID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecretConstants constants = SecretConstants();
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: constants
            .appId, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: constants
            .appSign, // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: 'user_id',
        userName: 'user_name',
        conferenceID: conferenceID,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(
            audioVideoViewConfig: ZegoPrebuiltAudioVideoViewConfig(),
            topMenuBarConfig: ZegoTopMenuBarConfig(),
            bottomMenuBarConfig: ZegoBottomMenuBarConfig(),
            memberListConfig: ZegoMemberListConfig(),
            notificationViewConfig: ZegoInRoomNotificationViewConfig(),
            chatViewConfig: ZegoInRoomChatViewConfig()),
      ),
    );
  }
}
