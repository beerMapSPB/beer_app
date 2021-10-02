import 'package:mobile_app/resources/resources.dart';

class Beer {
  final String name;
  final String brewery;
  final String style;
  final String abv;
  final String ibu;
  final String untappdRating;
  final String untappdRateCount;

  final String image;
  Beer({
    required this.name,
    required this.brewery,
    required this.style,
    required this.abv,
    required this.ibu,
    required this.untappdRating,
    required this.untappdRateCount,
    this.image = AppImages.beerExample,
  });
}
