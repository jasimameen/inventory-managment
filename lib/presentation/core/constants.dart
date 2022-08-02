import 'dart:math' show Random;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show Color, SizedBox, Spacer;

/// ScreenWidth of the Device runnig
double _screenWidth = 0;
double get screenWidth {
  return _screenWidth;
}

/// set screenWidth to constand
set setScreenWidth(width) => _screenWidth = width;

// ScreeenHeight of the Device running
double _screenHeight = 0;
double get screenHeight => _screenHeight;

/// set ScreenHeight to a constand
set setScreenHeight(height) => _screenHeight = height;

// fillers
const spacer = Spacer();
const divider = Divider(thickness: 3);

// Height
const kHeight3 = SizedBox(height: 3);
const kHeight5 = SizedBox(height: 5);
const kHeight = SizedBox(height: 10);

// Width
const kWidth = SizedBox(width: 10);

// padding
const defaultPadding = 16.0;

// color
Color get getRandomColor => Color(Random().nextInt(0xffffffff)).withAlpha(0xff);

const kVehicleCardImage = 'assets/images/vehicle_clipart.png';

// appbar height
const kAppBarHeight = 50.0;
const Size kPriferedSize = Size.fromHeight(50);


/// home screen vehicle stock list title
