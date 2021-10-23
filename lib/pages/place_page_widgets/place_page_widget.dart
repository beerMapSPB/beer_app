import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:mobile_app/entity/places.dart';
import 'package:mobile_app/pages/place_page_widgets/interior.dart';
import 'package:mobile_app/pages/places_page_widgets/externals_app_widget.dart';

import 'adress.dart';
import 'communication.dart';
import 'description.dart';
import 'hours.dart';
import 'main_header.dart';
import 'map.dart';
import 'place_rating.dart';

class PlacePageWidget extends StatefulWidget {
  final int placeId;

  const PlacePageWidget({Key? key, required this.placeId}) : super(key: key);

  @override
  State<PlacePageWidget> createState() => _PlacePageWidgetState();
}

class _PlacePageWidgetState extends State<PlacePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${placesForTestes[widget.placeId].name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: ListView(
          children: [
            InteriorWidget(imgPath: placesForTestes[widget.placeId].interior),
            HeaderWidget(text: 'Тип: ${placesForTestes[widget.placeId].type}'),
            PlaceRatingWidget(rate: placesForTestes[widget.placeId].rate),
            HeaderWidget(text: 'Описание'),
            DescriptionWidget(
                description: placesForTestes[widget.placeId].description),
            HeaderWidget(text: 'Адрес'),
            AdressWidget(adress: placesForTestes[widget.placeId].adress),
            HeaderWidget(text: 'Контакты'),
            CommunicationWidget(
                phone: placesForTestes[widget.placeId].externalLinks.phone!),
            HeaderWidget(text: 'Социальные сети'),
            ExternalAppsWidget(
              instagram:
                  placesForTestes[widget.placeId].externalLinks.instagram,
              vk: placesForTestes[widget.placeId].externalLinks.vk,
              web: placesForTestes[widget.placeId].externalLinks.web,
              telegram: placesForTestes[widget.placeId].externalLinks.telegram,
            ),
            HeaderWidget(text: 'Время работы'),
            HoursWidget(),
            HeaderWidget(text: 'Расположение'),
            MapWidget()
          ],
        ),
      ),
    );
  }
}
