import 'package:demo_flutter_key/second.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  final GlobalKey<SecondScreenState> inputKey = GlobalKey();

  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            SecondScreen(key: inputKey),
            ElevatedButton(
                onPressed: () {
                  inputKey.currentState?.updateInput();
                },
                child: const Text("Update"))
          ],
        ),
      ),
    );
  }
}
