import 'package:flutter/material.dart';
import 'package:mgt/components/appbar/appbar.dart';
import 'package:mgt/components/base_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends BaseScreen {
  @override
  Widget buildAppbar(BuildContext context) {
    return AppBarAdapter(
      text: 'Test',
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Container();
  }
}
