part of 'routes.dart';

class AppRouter extends FluroRouter {}

class AppRouterHandler extends Handler {
  AppRouterHandler({
    HandlerType type = HandlerType.route,
    HandlerFunc handlerFunc,
  }) : super(
          type: type,
          handlerFunc: handlerFunc,
        );
}
