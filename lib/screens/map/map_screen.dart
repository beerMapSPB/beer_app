import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobile_app/secrets/api_keys.dart';

class MapPageWidget extends StatefulWidget {
  MapPageWidget({Key? key}) : super(key: key);

  @override
  _MapPageWidgetState createState() => _MapPageWidgetState();
}

class _MapPageWidgetState extends State<MapPageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate:
              "https://api.mapbox.com/styles/v1/slowbroshka/ckvei3e6yfeoq14o8qsmu9c9y/tiles/256/{z}/{x}/{y}@2x?access_token=$ApiKeys.MAP_ACCESS_TOKEN",
          additionalOptions: {
            'accessToken': ApiKeys.MAP_ACCESS_TOKEN,
            'id': 'mapbox.mapbox-streets-v8'
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 80.0,
              height: 80.0,
              point: LatLng(51.5, -0.09),
              builder: (ctx) => Container(
                child: FlutterLogo(),
              ),
            ),
          ],
        ),
      ],
    ));
  }

  void onStyleLoadedCallback() {
    print('onStyleLoadedCallback');
  }
}
