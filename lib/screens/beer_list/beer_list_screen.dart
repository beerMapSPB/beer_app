import 'package:flutter/material.dart';
import 'package:mobile_app/entity/beer.dart';
import 'package:mobile_app/entity/beers.dart';

import 'controls/image.dart';
import 'controls/main_info.dart';
import 'controls/params.dart';
import 'controls/untappd_rating.dart';

class BeersPageWidget extends StatelessWidget {
  final Color color;

  final List<Beer> _beers = beersForTestes;

  BeersPageWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 141,
        itemBuilder: (BuildContext context, int index) {
          return Column(children: [
            Row(children: [
              BeerImageWidget(imagePath: _beers[index].image),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: BeerMainInfoWidget(
                    name: _beers[index].name, //
                    brewery: _beers[index].brewery,
                    style: _beers[index].style,
                    color: color,
                  ),
                ),
              )
            ]),
            // Spacer(),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: UntappdRatingImageWidget(rate: 2.5)),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: BeerParamsWidget(
                      ibu: _beers[index].ibu,
                      abv: _beers[index].abv,
                      rateCount: _beers[index].untappdRateCount,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              indent: 110,
              color: Colors.black,
            )
          ]);
        });
  }
}
