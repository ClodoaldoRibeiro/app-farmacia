import 'package:farmacia_app/models/place.dart';
import 'package:farmacia_app/repositories/parse_errors.dart';
import 'package:farmacia_app/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PlaceRepository {
  ///Search from places to parser server
  Future<List<Place>> getPlace() async {
    try {
      final QueryBuilder<ParseObject> queryBuilder =
          QueryBuilder<ParseObject>(ParseObject(keyPlaceTable));

      final response = await queryBuilder.query();

      print(response.results);

      if (response.success && response.results != null) {
        return response.results.map((po) => Place.fromParse(po)).toList();
      } else if (response.success && response.results == null) {
        return [];
      } else {
        return Future.error(ParseErrors.getDescription(response.error.code));
      }
    } catch (e) {
      return Future.error("Falha da conecxão");
    }
  }
}
