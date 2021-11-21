import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mobile_app/secrets/map_consts.dart';

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
          center: LatLng(59.932242, 30.339199), zoom: 13.0, maxZoom: 18),
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
          markers: [
            Marker(
              width: 40.0,
              height: 40.0,
              point: LatLng(59.95186452200175, 30.304241219184032),
              builder: (ctx) => Container(
                child: new Icon(Icons.place),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
