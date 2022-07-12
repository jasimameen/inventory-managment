import 'dart:math' show Random;

import 'package:flutter/widgets.dart' show Color, SizedBox, Spacer;

// fillers
const spacer = Spacer();

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
