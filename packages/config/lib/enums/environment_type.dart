enum EnvironmentType {
  development,
  production,
  staging,
}

extension $EnvironmentType on EnvironmentType {
  String toShortString() {
    return this.toString().split('.').last;
  }
}
