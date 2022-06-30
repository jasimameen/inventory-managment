import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final sl = GetIt.I;

@InjectableInit()
Future<void> configInjection() async =>
    $initGetIt(sl, environment: Environment.prod);
