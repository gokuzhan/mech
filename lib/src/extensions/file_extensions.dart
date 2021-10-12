import 'dart:io';

import 'package:mech/src/features/base64/base64_file.dart';
import 'package:mech/src/mimes.dart';

extension FileExtension on File {
  String get fileName => path.split('/').last;

  String get extension => fileName.split('.').last;

  String get mime => mimeDataMap[extension] ?? "text/plain";

  Base64File toBase64File() {
    return Base64File.file(this);
  }
}
