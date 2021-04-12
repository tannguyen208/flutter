class CommonPath {
  static bool isCommonPath(String path) => path.contains($.rootPath);

  static final something = $._('/something');
}

extension $ on CommonPath {
  static String rootPath = 'common';

  static String _(String path) {
    return '$rootPath/$path';
  }
}
