import 'package:flutter/material.dart';
import 'package:hellozegocloud/core/providers/zego_result_provider.dart';
import 'package:hellozegocloud/pages/call_pages/group_video_call.dart';
import 'package:hellozegocloud/pages/call_pages/group_voice_call.dart';
import 'package:hellozegocloud/pages/call_pages/one_one_video_call.dart';
import 'package:hellozegocloud/pages/call_pages/one_one_voice_call.dart';
import 'package:hellozegocloud/pages/conferance_pages/video_conerance_page.dart';
import 'package:provider/provider.dart';

import 'core/constants/service/zego_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    ZegoProvider zegoProvider = Provider.of<ZegoProvider>(context);
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  const IdPopup(
                    routeId: 0,
                  ).show(context);
                },
                icon: const Icon(Icons.group),
                label: const Text("1'e 1 görüntülü arama")),
            ElevatedButton.icon(
                onPressed: () {
                  const IdPopup(
                    routeId: 1,
                  ).show(context);
                },
                icon: const Icon(Icons.duo),
                label: const Text("Grup görüntülü arama")),
            ElevatedButton.icon(
                onPressed: () {
                  const IdPopup(
                    routeId: 2,
                  ).show(context);
                },
                icon: const Icon(Icons.record_voice_over),
                label: const Text("1'e 1 sesli arama")),

            ElevatedButton.icon(
                onPressed: () {
                  const IdPopup(
                    routeId: 3,
                  ).show(context);
                },
                icon: const Icon(Icons.voicemail),
                label: const Text("Grup sesli arama")),
            //  const ZegoAcceptInvitationButton(inviterID: "inviterID"),
            ElevatedButton(
              onPressed: () {
                const IdPopup(
                  routeId: 4,
                ).show(context);
              },
              child: const Text('Toplantoya Katıl'),
            ),
            ElevatedButton(
              onPressed: () {
                ZegoLoginService().loginWithZego();
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
                onPressed: () {
                  ZegoLoginService().logoutZego();
                },
                child: const Text('Logout')),
            ElevatedButton(
              onPressed: () {
                ZegoLoginService().loginWithZego2();
              },
              child: const Text('Login 2'),
            ),
            ElevatedButton(
              onPressed: () {
                ZegoLoginService().inviteZego(context);
              },
              child: const Text("Invite"),
            ),
            ElevatedButton(
              onPressed: () {
                print(zegoProvider.callId);
                //  ZegoLoginService().acceptIniviteZego(context);
              },
              child: const Text("Accept Invitation"),
            ),
            // ZegoInRoomMessage(user: user, message: message, timestamp: timestamp, messageID: messageID)
          ],
        ),
      ),
    ));
  }
}

class IdPopup extends StatelessWidget {
  const IdPopup({required this.routeId, Key? key}) : super(key: key);
  final int routeId;

  @override
  Widget build(BuildContext context) {
    String id = "";
    return AlertDialog(
      title: const Text("Id Seçiniz"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            onChanged: (x) {
              print(x);
              id = x;
              print("Id$id");
            },
            decoration: const InputDecoration(
              hintText: "call_id",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => routeId == 0
                        ? OneOneVideoCall(callID: id)
                        : routeId == 1
                            ? GroupVideoCall(callID: id)
                            : routeId == 2
                                ? OneOneVoiceCall(callID: id)
                                : routeId == 3
                                    ? VoiceGroupCallPage(callID: id)
                                    : VideoConferencePage(conferenceID: id),
                  ),
                );
              },
              child: const Text('Katıl'))
        ],
      ),
    );
  }
}

extension SelecteIdExtension on IdPopup {
  show(BuildContext context) {
    showDialog(context: context, builder: (context) => this);
  }
}
