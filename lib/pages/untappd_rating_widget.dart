import 'package:flutter/material.dart';
import 'package:mobile_app/resources/resources.dart';

class UntappdRatingImageWidget extends StatelessWidget {
  final double rate;
  const UntappdRatingImageWidget({
    Key? key,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(AppImages.beerRate),
      width: 90,
      height: 30,
    );
  }
}
