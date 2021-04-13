import 'package:flutter/material.dart';

abstract class _$Base extends StatelessWidget {
  // AppConfig config;
  Widget getLayout(BuildContext context);

  @override
  Widget build(BuildContext context) {
    // config = AppConfig.of(context);
    return getLayout(context);
  }
}

abstract class BaseScreen extends _$Base {
  @override
  Widget getLayout(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppbar(context),
        body: buildBody(context),
      ),
    );
  }

  /// should be overridden in extended widget
  Widget buildAppbar(BuildContext context);

  /// should be overridden in extended widget
  Widget buildBody(BuildContext context);
}
