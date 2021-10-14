import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:mech/src/utils/mimes.dart';

/// A `Base64File` instance contains File and encoded base64 string
/// and contains properties for details of file.
/// fileName, extension, mime, toData
///
class Base64File {
  /// Source File
  late File file;

  /// base64 string of the Source File
  late String content;

  /// Name of the file
  String get fileName => file.path.split('/').last;

  /// extension of the file
  String get extension => fileName.split('.').last;

  /// mime type of the file
  String get mime => mimeDataMap[extension] ?? "text/plain";

  /// base64 encoded url of the file
  String get toData => "data:$mime;base64,$content";

  /// Converts File to [Base64File]
  Base64File.file(File f) {
    Uint8List imageBytes = f.readAsBytesSync();
    file = f;
    content = base64Encode(imageBytes);
  }
}
