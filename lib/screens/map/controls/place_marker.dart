import 'package:flutter_map/flutter_map.dart';

import 'package:flutter/material.dart';
import 'package:mobile_app/screens/map/place_marker_info.dart';

class PlaceMarker {
  static const Size makerSize = Size(120.0, 30.0);
  static const Icon _icon = Icon(Icons.sports_bar);

  static Marker createMarker(PlaceMarkerInfo markerInfo) {
    return Marker(
        point: markerInfo.location,
        width: makerSize.width,
        height: makerSize.height,
        rotate: true,
        builder: (ctx) => Row(
              children: [
                _icon,
                Flexible(
                    child:
                        Text(markerInfo.name, overflow: TextOverflow.ellipsis))
              ],
            ));
  }
}
