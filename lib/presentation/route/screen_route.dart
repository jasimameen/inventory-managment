import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/route/route_bloc.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context.read<RouteBloc>().add(const RouteEvent.started());
    });
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Route'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<RouteBloc, RouteState>(
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final townData = state.towns[index];
                final shopCount = state.shops.length;
                return ListTile(
                  title: Text(townData.name),
                  subtitle: Text(townData.district.toString()),
                  trailing: Text('Shops : ' + shopCount.toString()),
                );
              },
              itemCount: state.towns.length,
            );
          },
        ),
      ),
    );
  }
}
