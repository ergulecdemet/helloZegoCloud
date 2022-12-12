import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hellozegocloud/call_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final callIdController = TextEditingController(text: "call_id");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          Expanded(
              child: TextFormField(
            controller: callIdController,
            decoration:
                const InputDecoration(labelText: "bir id yaz ve katıl.."),
          )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CallPage(callID: callIdController.text);
                }));
              },
              child: Text('katıl'))
        ],
      )),
    );
  }
}
