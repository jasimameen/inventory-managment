import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'domain/core/sl/injection.dart';
import 'presentation/my_app/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configInjection();

  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.greenAccent,
  ));
}
