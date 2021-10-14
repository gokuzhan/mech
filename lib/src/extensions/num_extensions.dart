import 'dart:ui';

extension NumberExtension on num {
  /// This will return multiplied with devicePixelRatio of the device.
  ///
  /// ```dart
  /// devicePixelRatio = 1.2
  /// 4.dp; // '1.2 * 4 = 4.8'
  /// ```
  double get dp => window.devicePixelRatio * this;

  /// The length of the digits in the number
  ///
  /// ```dart
  /// 1.28; // '1'
  /// 11.999; // '2'
  /// ```
  int get digits => "${this}".split('.').first.length;

  /// The length of the decimals in the number
  ///
  /// ```dart
  /// 1.2; // '1'
  /// 1.999; // '3'
  /// ```
  int get precisions => "${this}".split('.').last.length;

  /// Returns decimals in the number
  ///
  /// ```dart
  /// 1.2; // '2'
  /// 1.999; // '999'
  /// ```
  int get decimals => int.tryParse("${this}".split('.').last) ?? 0;

  /// Verifying the length of the digits is equal to the given length.
  ///
  /// ```dart
  /// 101101.eqlDgt(6); // 'true'
  /// 001111.eqlDgt(8); // 'false'
  /// ```
  bool eqlDgt(int size) => digits == size;
}
