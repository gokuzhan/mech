import 'package:mech/src/utils/utils.dart';

extension StringExtension on String {
  /// Converts first character in this string to upper case.
  ///
  /// ```dart
  /// 'ALPHABET'.capitalize; // 'Alphabet'
  /// 'abc'.capitalize;      // 'Abc'
  /// ```
  String get capitalize =>
      isNotEmpty ? "${toLower[0].toUpperCase()}${substring(1)}" : this;

  /// Converts all characters in this string to lower case.
  ///
  /// If the string is already in all lower case, this method returns `this`.
  /// ```dart
  /// 'ALPHABET'.toLower; // 'alphabet'
  /// 'abc'.toLower;      // 'abc'
  /// ```
  String get toLower => isNotEmpty ? toLowerCase() : this;

  /// Converts all characters in this string to upper case.
  ///
  /// If the string is already in all upper case, this method returns `this`.
  /// ```dart
  /// 'alphabet'.toUpper; // 'ALPHABET'
  /// 'ABC'.toUpper;      // 'ABC'
  /// ```
  String get toUpper => isNotEmpty ? toUpperCase() : this;

  /// This will help to validate that the string is an email
  ///
  /// ```dart
  /// 'abc@domain.com'.isEmail; // 'true'
  /// 'abc@domain'.isEmail // 'false'
  /// ```
  bool get isEmail => Rexp.email.hasMatch(this);

  /// This will help to validate that the string is an IPv4
  ///
  /// ```dart
  /// '121.0.0.1'.isIPv4; // 'true'
  /// '340.282.366.920.938.463.463.374.607.431.768.211.456'.isIPv4 // 'false'
  /// ```
  bool get isIPv4 => Rexp.ipv4.hasMatch(this);

  /// This will help to validate that the string is an IPv6
  ///
  /// ```dart
  /// '121.0.0.1'.isIPv6; // 'false'
  /// '340.282.366.920.938.463.463.374.607.431.768.211.456'.isIPv6 // 'true'
  /// ```
  bool get isIPv6 => Rexp.ipv6.hasMatch(this);

  /// This will help to validate that the string is an URL
  ///
  /// ```dart
  /// 'http://www.google.com'.isUrl; // 'true'
  /// 'google'.isUrl // 'false'
  /// ```
  bool get isUrl => Rexp.url.hasMatch(this);

  /// This will help to verify that the string has the accented characters
  ///
  /// ```dart
  /// 'á, é, í, ó, ú, ý Á, É, Í, Ó, Ú, Ý'.hasAccentedChars; // 'true'
  /// 'a,e,i,o,u,y, A,E,I,O,U,Y'.hasAccentedChars // 'false'
  /// ```
  bool get hasAccentedChars => Rexp.accented.hasMatch(this);

  /// This will help to verify that the string has the emoji's
  ///
  /// ```dart
  /// '👩 emoji'.hasAccentedChars; // 'true'
  /// 'paragraph'.hasAccentedChars // 'false'
  /// ```
  bool get hasEmoji => Rexp.emoji.hasMatch(this);

  /// This will help to verify that the string is an Alphanumeric String
  ///
  /// ```dart
  /// 'AB345FGH'.hasAccentedChars; // 'true'
  /// 'ABCDEFGH'.hasAccentedChars // 'false'
  /// ```
  bool get isAlphaNumeric => hasNumeric && hasAlPhs;

  /// This will help to verify that the string has Numbers
  ///
  /// ```dart
  /// 'ABCDEFGH'.hasAccentedChars // 'false'
  /// '123DEFGH'.hasAccentedChars; // 'true'
  /// ```
  bool get hasNumeric => Rexp.numeric.hasMatch(this);

  /// This will help to verify that the string has Alphabets
  ///
  /// ```dart
  /// '12345678'.hasAccentedChars // 'false'
  /// 'ABC34567'.hasAccentedChars; // 'true'
  /// ```
  bool get hasAlPhs => Rexp.alphabets.hasMatch(this);

  /// Verifying the length of the string is equal to the given length.
  ///
  /// ```dart
  /// 'Superman'.eqlLen(8); // 'true'
  /// 'Batman'.eqlLen(8); // 'false'
  /// ```
  bool eqlLen(int size) => length == size;

  /// Verifying the length of the string is greater than given length.
  ///
  /// ```dart
  /// 'Superman'.gtLen(6); // 'true'
  /// 'Batman'.gtLen(6); // 'false'
  /// ```
  bool gtLen(int size) => length > size;

  /// Verifying the length of the string is less than given length.
  ///
  /// ```dart
  /// 'Superman'.ltLen(8); // 'false'
  /// 'Batman'.ltLen(8); // 'true'
  /// ```
  bool ltLen(int size) => length < size;

  /// Verifying the length of the string is greater than or equal to the given length.
  ///
  /// ```dart
  /// 'Superman'.gteLen(6); // 'false'
  /// 'Batman'.gteLen(8); // 'true'
  /// ```
  bool gteLen(int size) => gtLen(size) || eqlLen(size);

  /// Verifying the length of the string is less than or equal to the given length.
  ///
  /// ```dart
  /// 'Superman'.lteLen(6); // 'true'
  /// 'Batman'.lteLen(8); // 'false'
  /// ```
  bool lteLen(int size) => ltLen(size) || eqlLen(size);
}
