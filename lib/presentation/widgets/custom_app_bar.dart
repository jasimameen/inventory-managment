import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart' show SystemChrome, SystemUiOverlayStyle;
import 'package:invendory_managment/presentation/core/constants.dart';
import 'package:invendory_managment/presentation/core/navigation.dart';

import '../core/styles.dart';

class CustomAppBar extends StatelessWidget {
  final String middle;
  final String? previousPageTitle;
  const CustomAppBar({
    Key? key,
    this.middle = '',
    this.previousPageTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); // 1

    return PhysicalModel(
      color: AppColors.red,
      elevation: 20,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: SafeArea(
        left: false,
        right: false,
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 249, 90, 79),
                Color.fromARGB(255, 188, 48, 38)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.center,
            ),
          ),
          height: 50,
          width: double.infinity,
          child: Center(
            child: Row(
              children: [
                // start
                kWidth,
                previousPageTitle != null
                    ? TextButton.icon(
                        onPressed: () {
                          Navigation.pop();
                        },
                        icon: const Icon(CupertinoIcons.back,
                            color: AppColors.white),
                        label: Text(
                          previousPageTitle!,
                          style: const TextStyle(color: AppColors.white),
                        ),
                      )
                    : const SizedBox(),

                // middle

                Expanded(
                  child: Center(
                    child: Text(
                      middle,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),

                // trailing
                previousPageTitle != null
                    ? TextButton.icon(
                        onPressed: null,
                        icon: const Icon(CupertinoIcons.back,
                            color: AppColors.transparent),
                        label: Text(
                          previousPageTitle!,
                          style: const TextStyle(color: AppColors.transparent),
                        ),
                      )
                    : const SizedBox(),
                kWidth,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
