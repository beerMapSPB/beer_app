import 'package:flutter_map/flutter_map.dart';

import 'package:flutter/material.dart';
import 'package:mobile_app/screens/map/place_marker_info.dart';

class PlaceMarker extends Marker {
  final PlaceMarkerInfo markerInfo;

  static const Size _logoSize = Size(40.0, 40.0);
  static const Icon _icon = Icon(Icons.sports_bar);

  static Widget widget(BuildContext context) {
    return Container(child: _icon);
  }

  PlaceMarker(
    this.markerInfo,
  ) : super(
            width: _logoSize.width,
            height: _logoSize.height,
            point: markerInfo.location,
            builder: widget);
}
