import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/presentation/core/constants.dart';
import 'package:invendory_managment/presentation/core/styles.dart';

import '../../application/route/route_bloc.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<RouteBloc>().add(const RouteEvent.started());
    });
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Route'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: BlocBuilder<RouteBloc, RouteState>(
          builder: (context, state) {
            if (state.isLoading) {
              // return const Center(child: CircularProgressIndicator());
            }
            return Stack(
              children: [
                ListView.builder(
                  itemBuilder: (context, index) {
                    final town = state.towns[index];
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          kWidth,
                          kWidth,
                          const Icon(
                            Icons.horizontal_rule,
                            size: 50,
                          ),
                          Transform.rotate(
                              angle: pi / 2,
                              child: const Icon(Icons.navigation_rounded)),
                          kWidth,
                          Text(
                            town.name + ', ' + town.districtName,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: state.towns.length,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  width: 5,
                  height: double.infinity,
                  color: Colors.grey.shade700,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
