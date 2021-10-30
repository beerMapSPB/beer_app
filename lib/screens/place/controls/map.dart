import 'package:flutter/material.dart';
import 'package:mobile_app/resources/resources.dart';

class MapWidget extends StatelessWidget {
  static const String imgPath = AppImages.map;

  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage(imgPath),
        width: double.infinity,
        height: 400,
        fit: BoxFit.cover);
  }
}
