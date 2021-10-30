import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_app/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(true, File(AppImages.beerBlue).existsSync());
    expect(true, File(AppImages.incidentBeerShop).existsSync());
    expect(true, File(AppImages.beerExample).existsSync());
    expect(true, File(AppImages.stars35).existsSync());
    expect(true, File(AppImages.beerRate).existsSync());
    expect(true, File(AppImages.map).existsSync());
    expect(true, File(AppImages.interior).existsSync());
    expect(true, File(AppImages.beerGreen).existsSync());
  });
}
