import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:invendory_managment/presentation/widgets/custom_app_bar.dart';
import '../../core/strings.dart';
import '../core/constants.dart';

import '../../application/errand/errand_bloc.dart';
import '../core/styles.dart';

const deliveryImageUrl =
    'https://library.kissclipart.com/20190913/lbq/kissclipart-cartoon-clip-art-mode-of-transport-line-package-de-333c08b598fba247.png';

class ScreenVehcle extends StatelessWidget {
  const ScreenVehcle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<ErrandBloc>().add(const ErrandEvent.getErrandInfo());
      context.read<ErrandBloc>().add(const ErrandEvent.getDriverInfo());
      context.read<ErrandBloc>().add(const ErrandEvent.getVehicleInfo());
    });
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:const PreferredSize(
        preferredSize: kPriferedSize,
        child:  CustomAppBar(
          previousPageTitle: 'Home',
          middle:'Vehcle Details',
        ),
      ),
      body: SizedBox(
        child: Center(
          child:
              BlocBuilder<ErrandBloc, ErrandState>(builder: (context, state) {
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

            return LimitedBox(
              child: Column(
                children: [
                  spacer,
                  Text(
                    """
            Driver Name : ${driverInfo.name.toUpperCase()}
            \n
            Vehcle No : ${vehicleInfo.vehicle_number}
            \n
            Vehicle Type : ${vehicleInfo.vehicle_type}
            """,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.green,
                    ),
                  ),
                  spacer,
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      kImageDeliveryClipArt,
                      height: ScreenWidth * .5,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
