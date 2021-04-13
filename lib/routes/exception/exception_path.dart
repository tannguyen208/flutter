class ExceptionPath {
  static bool isExceptionPath(String path) => path.contains($.rootPath);

  static final error404 = $._('/error-404');
  static final error500 = $._('/error-500');
}

extension $ on ExceptionPath {
  static String rootPath = 'exceptiom';

  static String _(String path) {
    return '$rootPath/$path';
  }
}
