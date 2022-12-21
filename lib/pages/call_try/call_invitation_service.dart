import 'package:flutter/material.dart';
import 'package:hellozegocloud/core/constants/secret_keys.dart';
import 'package:hellozegocloud/core/providers/zego_result_provider.dart';
import 'package:provider/provider.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
import 'package:zego_uikit_signaling_plugin/zego_uikit_signaling_plugin.dart';

class CallInvitationService extends StatelessWidget {
  const CallInvitationService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ZegoProvider zegoProvider = Provider.of<ZegoProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Invite Friend'),
        ),
        body: ZegoUIKitPrebuiltCallWithInvitation(
          appID: SecretConstants().appId,
          appSign: SecretConstants().appSign,
          userID: zegoProvider.userId,
          userName: zegoProvider.userName,
          plugins: [ZegoUIKitSignalingPlugin()],
          requireConfig: (ZegoCallInvitationData data) {
            late ZegoUIKitPrebuiltCallConfig config;

            if (data.invitees.length > 1) {
              ///  group call
              config = ZegoInvitationType.videoCall == data.type
                  ? ZegoUIKitPrebuiltCallConfig.groupVideoCall()
                  : ZegoUIKitPrebuiltCallConfig.groupVoiceCall();
            } else {
              ///  one on one call
              config = ZegoInvitationType.videoCall == data.type
                  ? ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
                  : ZegoUIKitPrebuiltCallConfig.oneOnOneVoiceCall();

              config.onHangUp = () {
                Navigator.of(context).pop();
              };
            }

            return config;
          },
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    onChanged: (value) {
                      zegoProvider.invitedFriendId = value;
                      zegoProvider.notify();
                    },
                    decoration:
                        const InputDecoration(hintText: 'Add friend id'),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Checkbox(
                      value: zegoProvider.isVideo,
                      onChanged: (v) {
                        zegoProvider.isVideo = v!;
                        zegoProvider.notify();
                      }),
                  Visibility(
                    visible:
                        zegoProvider.invitedFriendId.isNotEmpty ? true : false,
                    child: ZegoStartCallInvitationButton(
                      text: "Invite",
                      textStyle: const TextStyle(color: Colors.black),
                      isVideoCall: zegoProvider.isVideo,
                      invitees: [
                        ZegoUIKitUser(
                          id: zegoProvider.invitedFriendId,
                          name: "mustafa",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
