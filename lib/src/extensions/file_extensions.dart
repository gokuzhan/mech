import 'dart:io';

import 'package:mech/src/features/base64/base64_file.dart';
import 'package:mech/src/utils/mimes.dart';

extension FileExtension on File {
  /// Returns name of the file
  String get fileName => path.split('/').last;

  /// Returns extension of the file
  /// (e.g) .png, .jpg, .pdf ...etc
  String get extension => fileName.split('.').last;

  /// Returns mime type of the file
  /// (e.g) image/png, image/jpg, application/pdf ...etc
  String get mime => mimeDataMap[extension] ?? "text/plain";

  /// Returns instance of [Base64File] with file
  /// (e.g) image/png, image/jpg, application/pdf ...etc
  Base64File toBase64File() {
    return Base64File.file(this);
  }
}
