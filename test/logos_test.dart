import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app/resources/resources.dart';

void main() {
  test('logos assets test', () {
    expect(true, File(Logos.site).existsSync());
    expect(true, File(Logos.vk).existsSync());
    expect(true, File(Logos.phone).existsSync());
    expect(true, File(Logos.telegram).existsSync());
    expect(true, File(Logos.instagram).existsSync());
  });
}
