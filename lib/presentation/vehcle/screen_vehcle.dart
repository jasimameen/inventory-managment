import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/vehicle/vehicle_bloc.dart';
import '../core/styles.dart';

class ScreeVehcle extends StatelessWidget {
  const ScreeVehcle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<VehicleBloc>().add(const VehicleEvent.getVehicleInfo());
    });
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        previousPageTitle: 'Home',
        middle: Text('Vehcle Details'),
      ),
      body: SizedBox(
        child: Center(
          child: BlocBuilder<VehicleBloc, VehicleState>(
            builder: (context, state) {
              final data = state.vehicleInfo;
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
Vehcle No : ${data.vehicle_number}
\n
Vehicle Type : ${data.vehicle_type}
\n
total Stocks : ${data.stock}
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
