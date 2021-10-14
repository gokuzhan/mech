import 'package:flutter_test/flutter_test.dart';

import 'extensions_test.dart';

Future<void> main() async {
  group('STRING EXTENSIONS', () {
    textStringTransforms();
  });
  group('DATETIME EXTENSIONS', () {
    testDateTimeConverts();
  });
  group('FILE EXTENSIONS', () {
    testFileHelpers();
  });
}
