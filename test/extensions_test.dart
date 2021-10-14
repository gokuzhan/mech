import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mech/src/extensions/extensions.dart';
import 'package:mech/src/features/features.dart';

import 'data.dart';

textStringTransforms() {
  test('Test ALL the string transforms', () {
    expect("hello universe".capitalize, "Hello universe");
    expect("HELLO UNIVERSE".toLower, "hello universe");
    expect("hello universe".toUpper, "HELLO UNIVERSE");
  });
}

testNumberUtilities() {
  test('Test ALL the number utilities', () {
    num number = 11.1111;
    expect(number.digits, 2);
  });
}

testDateTimeConverts() {
  test('Test ALL the datetime converts', () {
    DateTime datetime = DateTime(2021, 01, 01, 12, 0, 0, 0, 0);
    expect(datetime.toNanoSeconds, 1609482600000000000);
    expect(datetime.toMicroSeconds, 1609482600000000);
    expect(datetime.toMilliSeconds, 1609482600000);
    expect(datetime.toSeconds, 1609482600);
    expect(datetime.toMinutes, 26824710);
    expect(datetime.toHours, 447078.5);
  });
}

testFileHelpers() {
  test('Test ALL the file helpers', () {
    File file = File("test/images/tom.png");
    Base64File base64file = file.toBase64File();
    expect(base64file.content, tomImageBase64String);
    expect(base64file.extension, 'png');
    expect(base64file.fileName, 'tom.png');
    expect(base64file.mime, 'image/png');
    expect(base64file.toData, 'data:image/png;base64,$tomImageBase64String');
  });
}
