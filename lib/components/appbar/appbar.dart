import 'package:flutter/material.dart';

@immutable
abstract class IAppBarAdapter {
  double get height;
}

class AppBarAdapter extends StatelessWidget
    implements IAppBarAdapter, PreferredSizeWidget {
  AppBarAdapter({
    this.text = '',
    this.textAlign,
    this.leading,
    this.actions,
    this.backgroundColor,
  }) : super();

  final String text;
  final TextAlign textAlign;
  final Widget leading;
  final List<Widget> actions;
  final Color backgroundColor;

  @override
  get height => 84.0;

  @override
  get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: backgroundColor ?? Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SafeArea(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            if (leading != null) leading,
            Expanded(
              child: Text(
                text,
                textAlign: textAlign ?? TextAlign.center,
              ),
            ),
            if (actions != null && actions.isNotEmpty) Row(children: actions),
          ],
        ),
      ),
    );
  }
}
