import 'package:mobile_app/entity/place.dart';
import 'package:mobile_app/core/ID.dart';
import 'package:mobile_app/entity/tag.dart';

abstract class IClient {
  List<Place> places();

  Place palce(ID id);

  List<Tag> tags();
}
