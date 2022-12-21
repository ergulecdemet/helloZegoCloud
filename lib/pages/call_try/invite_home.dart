import 'package:flutter/material.dart';
import 'package:hellozegocloud/pages/call_try/call_invitation_service.dart';
import 'package:provider/provider.dart';

import '../../core/providers/zego_result_provider.dart';
import 'call_invitation_page.dart';

class InviteHome extends StatefulWidget {
  const InviteHome({Key? key}) : super(key: key);

  @override
  State<InviteHome> createState() => _InviteHomeState();
}

class _InviteHomeState extends State<InviteHome> {
  @override
  Widget build(BuildContext context) {
    ZegoProvider zegoProvider = Provider.of<ZegoProvider>(context);
    return Scaffold(
      /*
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        child: const Icon(Icons.home_filled),
      ),
     */
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: 'Call id', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CallOneOne(
                          callId: _controller.text,
                          userId: zegoProvider.userId,
                        ),
                      ),
                    );
                  },
                  child: const Text('Go')),
              const SizedBox(
                height: 15,
              ),
              */
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CallInvitationPage(
                        userId: zegoProvider.userId,
                      ),
                    ),
                  );
                },
                child: const Text('Invite CAll'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CallInvitationService(),
                      ),
                    );
                  },
                  child: const Text("Service"))
            ],
          ),
        ),
      ),
    );
  }
}
