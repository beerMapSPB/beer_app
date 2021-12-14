import 'dart:io';
import 'package:path_provider/path_provider.dart';

class DirectoryManager {
  static Directory? _appDir;
  static Directory? _tempDir;

  static appDir() async {
    if (_appDir == null) {
      _appDir = await getApplicationDocumentsDirectory();
    }
    return _appDir;
  }

  static tempDir() async {
    if (_tempDir == null) {
      _tempDir = await getTemporaryDirectory();
    }
    return _tempDir;
  }
}
