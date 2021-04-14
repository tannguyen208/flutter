import 'package:core/interface/spacing.dart';

class UIStore implements ISpacing {
  static double get spacing => 8.0;

  @override
  double margin = spacing * 2;

  @override
  double spacingTiny = spacing / 2;

  @override
  double spacingSmall = spacing;

  @override
  double spacingDefault = spacing * 2;

  @override
  double spacingMedium = spacing * 3;

  @override
  double spacingLarge = spacing * 4;

  @override
  double spacingExtraLarge = spacing * 6;

  @override
  double spacingHuge = spacing * 8;
}
