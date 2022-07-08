import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/errand/errand_bloc.dart';
import '../core/styles.dart';

class ScreeVehcle extends StatelessWidget {
  const ScreeVehcle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<ErrandBloc>().add(const ErrandEvent.getErrandInfo());
      context.read<ErrandBloc>().add(const ErrandEvent.getDriverInfo());
      context.read<ErrandBloc>().add(const ErrandEvent.getVehicleInfo());
    });
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Vehcle Details'),
      ),
      body: SizedBox(
        child: Center(
          child: BlocBuilder<ErrandBloc, ErrandState>(
            builder: (context, state) {
              final driverInfo = state.driverInfo;
              final vehicleInfo = state.vehicleInfo;
              if (state.isLoading) {
                return const CircularProgressIndicator(
                  color: AppColors.green,
                );
              }
              if (state.isError) {
                return const Text('Error Occured');
              }
              return Text(
                """
Vehcle No : ${vehicleInfo.vehicle_number}
\n
Vehicle Type : ${vehicleInfo.vehicle_type}
\n
Driver Name : ${driverInfo.name}
""",
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.green,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
