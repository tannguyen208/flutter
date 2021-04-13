import 'package:config/enums/environment_type.dart';

import 'environment.dart';

class DevelopmentEnv extends Environment {
  @override
  String get mode => EnvironmentType.development.toShortString();
}
