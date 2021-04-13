import 'package:flutter/material.dart';
import 'package:mgt/routes/exception/exception_path.dart';
import 'package:mgt/routes/routes.dart';

class ExceptionRouting {
  static void setup(AppRouter router) {
    router.define(
      ExceptionPath.error404,
      handler: ExceptionRouting.$404Handler,
    );
    router.define(
      ExceptionPath.error500,
      handler: ExceptionRouting.$500Handler,
    );
  }

  static final $404Handler = AppRouterHandler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return SizedBox();
    },
  );
  static final $500Handler = AppRouterHandler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      return SizedBox();
    },
  );
}
