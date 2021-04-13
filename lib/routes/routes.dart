import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mgt/routes/authorized/authorized_router.dart';
import 'package:mgt/routes/common/common_router.dart';
import 'package:mgt/routes/exception/exception_router.dart';
import 'package:mgt/routes/testing/testing_router.dart';
import 'package:mgt/routes/unauthenticated/unauthenticated_router.dart';
import 'package:mgt/views/exception/exception_routing.dart';

export 'package:fluro/fluro.dart';

part 'fluro.dart';

class Routes extends AppRouter {
  Routes._();

  static final Routes router = Routes._();

  static const root = '/';

  static void setup(GlobalKey<NavigatorState> navigatorKey) {
    router.notFoundHandler = ExceptionRouting.$404Handler;

    CommonRouter.setup(router);
    ExceptionRouter.setup(router);
    AuthorizedRouter.setup(router);
    UnauthenticatedRouter.setup(router);

    // checking testing flag => enabled
    TestingRouter.setup(router);
  }
}
