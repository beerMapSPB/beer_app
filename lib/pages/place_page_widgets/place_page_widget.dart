import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:mobile_app/entity/places.dart';
import 'package:mobile_app/pages/places_page_widgets/externals_app_widget.dart';

import 'adress.dart';
import 'communication.dart';
import 'description.dart';
import 'hours.dart';
import 'main_header.dart';

class PlacePageWidget extends StatelessWidget {
  final int placeId;

  const PlacePageWidget({Key? key, required this.placeId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          HeaderWidget(text: 'Описание'),
          DescriptionWidget(description: placesForTestes[placeId].description),
          HeaderWidget(text: 'Адрес'),
          AdressWidget(adress: placesForTestes[placeId].adress),
          HeaderWidget(text: 'Контакты'),
          CommunicationWidget(
              phone: placesForTestes[placeId].externalLinks.phone!),
          HeaderWidget(text: 'Социальные сети'),
          ExternalAppsWidget(
            instagram: placesForTestes[placeId].externalLinks.instagram,
            vk: placesForTestes[placeId].externalLinks.vk,
            web: placesForTestes[placeId].externalLinks.web,
            telegram: placesForTestes[placeId].externalLinks.telegram,
          ),
          HeaderWidget(text: 'Время работы'),
          HoursWidget()
        ],
      ),
    );
  }
}
