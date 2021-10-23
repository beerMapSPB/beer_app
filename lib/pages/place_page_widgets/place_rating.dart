import 'package:flutter/material.dart';
import 'package:mobile_app/resources/resources.dart';

class PlaceRatingWidget extends StatelessWidget {
  final double rate;
  static const String ratePath = AppImages.stars35;

  const PlaceRatingWidget({Key? key, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(ratePath),
          height: 15,
        ),
        SizedBox(width: 30),
        Text('$rate'),
      ],
    );
  }
}
