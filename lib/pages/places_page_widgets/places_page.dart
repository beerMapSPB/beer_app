import 'package:flutter/material.dart';
import 'package:mobile_app/entity/place.dart';
import 'package:mobile_app/entity/places.dart';
import 'package:mobile_app/resources/resources.dart';

import 'externals_app_widget.dart';

class PlacesPageWidget extends StatelessWidget {
  final Color color;

  final List<Place> _places = placesForTestes;

  PlacesPageWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _places.length,
        itemExtent: 220,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: Colors.black.withOpacity(0.1)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 8,
                      offset: Offset(0, 2))
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            children: [
                              Icon(Icons.place, color: color),
                              Flexible(
                                child: Text(
                                  _places[index].adress,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(_places[index].type))

                        // Spacer(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: const Divider(
                        thickness: 3,
                      ),
                    ),
                    Row(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(45.0),
                        child: Image(
                          image: AssetImage(AppImages.incidentBeerShop),
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(_places[index].name,
                                    style: new TextStyle(
                                        fontFamily: "Lucida",
                                        fontSize: 20.0,
                                        color: color)),
                              ),
                              Text(
                                _places[index].description,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 1),
                                child: ExternalAppsWidget(
                                  phone: _places[index].externalLinks.phone,
                                  instagram:
                                      _places[index].externalLinks.instagram,
                                  vk: _places[index].externalLinks.vk,
                                  web: _places[index].externalLinks.web,
                                  telegram:
                                      _places[index].externalLinks.telegram,
                                ),
                              ),
                              // SizedBox(height: 30)
                            ],
                          ),
                        ),
                      )
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: const Divider(
                        thickness: 3,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.highlight_off, size: 15, color: Colors.red),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(_places[index].operatingModeToHuman()),
                        ),
                        Spacer(),
                        Image(
                          image: AssetImage(AppImages.stars35),
                          height: 15,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
