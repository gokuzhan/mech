import 'dart:ui';

extension NumberExtension on num {
  double get dp => window.devicePixelRatio * this;
}
