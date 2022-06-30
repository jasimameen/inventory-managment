import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/navigation.dart';
import '../dashboard/screen_dashboard.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Errand Id'),
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
              kHeight,
              ElevatedButton.icon(
                onPressed: () {
                  // bloc
                  // Api integration
                  Navigation.pushAndRemoveUntil(
                      context, const ScreenDasboard());
                },
                icon: const Icon(Icons.arrow_circle_right_outlined),
                label: const Text('Start Session'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
