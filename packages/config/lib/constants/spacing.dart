import 'package:equatable/equatable.dart';

class Spacing extends Equatable {
  Spacing({
    double spacing = 8.0,
  })  : _spacing = spacing,
        super();

  final double _spacing;

  double get spacingTiny => _spacing / 2;

  double get spacingSmall => _spacing;

  double get spacingDefault => _spacing * 2;

  double get spacingMedium => _spacing * 3;

  double get spacingLarge => _spacing * 4;

  double get spacingExtraLarge => _spacing * 6;

  double get spacingHuge => _spacing * 8;

  double get margin => spacingDefault;

  @override
  List<Object> get props => throw UnimplementedError();
}
