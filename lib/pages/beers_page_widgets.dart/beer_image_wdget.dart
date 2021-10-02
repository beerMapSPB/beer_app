import 'package:flutter/material.dart';

class BeerImageWidget extends StatelessWidget {
  final String imagePath;
  const BeerImageWidget({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imagePath),
      width: 95,
      height: 95,
    );
  }
}
