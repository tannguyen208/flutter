class TestingPath {
  static bool isTestingPath(String path) => path.contains($.rootPath);

  static final something = $._('/something');
}

extension $ on TestingPath {
  static String rootPath = 'testing';

  static String _(String path) {
    return '$rootPath/$path';
  }
}
