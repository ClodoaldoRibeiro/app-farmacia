import 'package:farmacia_app/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Place {
  String id;
  String address;
  String image;
  String lat;
  String long;
  String phone;
  String title;

  Place({this.id, this.address, this.image, this.lat, this.phone, this.title});

  Place.fromParse(ParseObject object) {
    id = object.objectId;
    address = object.get(keyPlaceAddress);
    image = object.get(keyPlaceImage);
    lat = object.get(keyPlaceLat);
    long = object.get(keyPlaceLong);
    phone = object.get(keyPlacePhone);
    title = object.get(keyPlaceTitle);
  }

  @override
  String toString() {
    return 'Place{id: $id, address: $address, image: $image, lat: $lat, long: $long, phone: $phone, title: $title}';
  }
}
