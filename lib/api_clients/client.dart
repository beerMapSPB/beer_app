import 'package:mobile_app/api_clients/iclient.dart';
import 'package:mobile_app/entity/tag.dart';
import 'package:mobile_app/entity/place.dart';
import 'package:mobile_app/core/ID.dart';

class Client extends IClient {
  @override
  Place palce(ID id) {
    // TODO: implement palce
    throw UnimplementedError();
  }

  @override
  List<Place> places() {
    // TODO: implement places
    throw UnimplementedError();
  }

  @override
  List<Tag> tags() {
    // TODO: implement tags
    throw UnimplementedError();
  }
}
