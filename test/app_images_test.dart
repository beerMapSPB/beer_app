import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(true, File(AppImages.incidentBeerShop).existsSync());
    expect(true, File(AppImages.stars35).existsSync());
  });
}
