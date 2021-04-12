class AuthorizedPath {
  static bool isAuthorizedPath(String path) => path.contains($.rootPath);

  // tag:: profile screen
  static final profile = $._('/profile');
  // end-tag:: profile screen
}

extension $ on AuthorizedPath {
  static String rootPath = 'home';

  static String _(String path) {
    return '$rootPath/$path';
  }
}
