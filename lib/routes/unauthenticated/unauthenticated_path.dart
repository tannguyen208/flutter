class UnauthenticatedPath {
  static bool isUnauthenticatedPath(String path) => path.contains($.rootPath);

  static final login = $._('/login');
}

extension $ on UnauthenticatedPath {
  static String rootPath = 'auth';

  static String _(String path) {
    return '$rootPath/$path';
  }
}
