import 'package:flutter/material.dart';

class BeerParamsWidget extends StatelessWidget {
  final String ibu;
  final String abv;
  final String rateCount;

  const BeerParamsWidget({
    Key? key,
    required this.ibu,
    required this.abv,
    required this.rateCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text('$rateCount Ratings',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          )),
      Text('$abv% ABV',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          )),
      Text('$ibu IBU',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          )),
    ]);
  }
}
