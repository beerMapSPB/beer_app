import 'package:flutter/material.dart';

class InteriorWidget extends StatelessWidget {
  final String imgPath;

  const InteriorWidget({Key? key, required this.imgPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
        image: AssetImage(imgPath),
        width: double.infinity,
        height: 150,
        fit: BoxFit.fitWidth);
  }
}
