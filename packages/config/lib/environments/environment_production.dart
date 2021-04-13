import 'package:config/enums/environment_type.dart';

import 'environment.dart';

class ProductionEnv extends Environment {
  @override
  String get mode => EnvironmentType.production.toShortString();
}
