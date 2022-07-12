import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/presentation/core/constants.dart';

import '../../application/login/login_bloc.dart';
import '../../infrastructure/errand/errand_repo_impl.dart';
import '../core/navigation.dart';
import '../dashboard/screen_dashboard.dart';

const imageUrl =
    'https://images.unsplash.com/photo-1547623641-d2c56c03e2a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80';

class ScreenLogIn extends StatelessWidget {
  final TextEditingController errandController = TextEditingController();
  final shadow = const [
    BoxShadow(
      color: Colors.black38,
      blurRadius: 4.0,
      spreadRadius: 1.0,
      offset: Offset(2.0, 5.0), // shadow direction: bottom right
    )
  ];

  ScreenLogIn({Key? key}) : super(key: key);

  Widget userInputField() {
    return Container(
      height: 55,
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(30),
        boxShadow: shadow,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
        child: TextField(
          controller: errandController,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          textAlign: TextAlign.center,
          decoration: const InputDecoration.collapsed(
              hintText: '>>>>  Paste Current Errand Id here  <<<<',
              hintStyle: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(179, 96, 86, 86),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              )),
          keyboardType: TextInputType.text,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
            image: NetworkImage(imageUrl),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              spacer,
              const Icon(CupertinoIcons.wand_rays_inverse, size: 100),
              kHeight,
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Delivery Driver App',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              spacer,
              userInputField(),
              GestureDetector(
                onTap: () async {
                  // bloc
                  log('login button clicked');
                  context
                      .read<LoginBloc>()
                      .add(LoginEvent.loginWithErrandId(errandController.text));
                },
                child: Container(
                  height: 55,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.indigo.shade800,
                    boxShadow: shadow,
                  ),
                  child: Center(
                    child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        if (state.isLoading)
                          return const CircularProgressIndicator(
                              strokeWidth: 2);
                        else if (state.isDone)
                          return const Icon(CupertinoIcons.check_mark_circled);
                        final String btnText =
                            state.isError ? 'Try Again' : 'Sign In';
                        return Text(
                          btnText,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}