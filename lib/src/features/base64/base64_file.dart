import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:mech/src/mimes.dart';

class Base64File {
  final File file;
  final String content;

  String get fileName => file.path.split('/').last;

  String get extension => fileName.split('.').last;

  Base64File({required this.file, required this.content});

  String get mime => mimeDataMap[extension] ?? "text/plain";

  String get toData => "data:$mime;base64,$content";

  factory Base64File.file(File file) {
    Uint8List imageBytes = file.readAsBytesSync();
    return Base64File(file: file, content: base64Encode(imageBytes));
  }

  factory Base64File.base64(String content) {
    File file = File.fromRawPath(base64Decode(content));
    return Base64File(file: file, content: content);
  }
}
