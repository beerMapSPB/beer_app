import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mobile_app/entity/place.dart';
import 'package:mobile_app/entity/places.dart';
import 'package:mobile_app/screens/map/citys.dart';
import 'package:mobile_app/screens/map/place_marker_info.dart';
import 'package:mobile_app/secrets/map_consts.dart';

import 'controls/place_marker.dart';

class MapPageWidget extends StatefulWidget {
  final List<Place> _places = placesForTestes;

  MapPageWidget({Key? key}) : super(key: key);

  @override
  _MapPageWidgetState createState() => _MapPageWidgetState(_places
      .map((elm) =>
          PlaceMarker(PlaceMarkerInfo(name: elm.name, location: elm.latLng)))
      .toList());
}

class _MapPageWidgetState extends State<MapPageWidget> {
  final List<PlaceMarker> placesMarker;

  _MapPageWidgetState(this.placesMarker);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: FlutterMap(
      options: MapOptions(
          zoom: 12.0,
          maxZoom: 18,
          minZoom: 10,
          center: CityBoundaries.spb.center,
          bounds: CityBoundaries.spb,
          nePanBoundary: CityBoundaries.spb.northEast,
          swPanBoundary: CityBoundaries.spb.southWest),
      layers: [
        TileLayerOptions(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/${MapConsts.STYLE_PART}/tiles/256/{z}/{x}/{y}@2x?access_token=${MapConsts.ACCESS_TOKEN}',
          additionalOptions: {
            'accessToken': MapConsts.ACCESS_TOKEN,
            'id': MapConsts.DATA_SOURCE
          },
        ),
        MarkerLayerOptions(
          markers: placesMarker,
        ),
      ],
    ));
  }
}
