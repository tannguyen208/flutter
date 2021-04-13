import 'package:config/enums/environment_type.dart';

import 'environment.dart';

class StaginEnv extends Environment {
  @override
  String get mode => EnvironmentType.staging.toShortString();
}
