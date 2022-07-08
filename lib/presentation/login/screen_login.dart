import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:invendory_managment/infrastructure/errand/errand_repo_impl.dart';
import '../../domain/auth/i_auth_repo.dart';
import '../../infrastructure/auth/auth_repo_impl.dart';

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
                onPressed: () async {
                  // bloc
                  log('login button created');
                  await ErrandRepoImpl().initialiazeErrand();
                  // await AuthRepoImpl().signInWithErrendId('errendId');
                  log('navigatting ...');
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
