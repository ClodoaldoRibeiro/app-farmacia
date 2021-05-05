import 'package:farmacia_app/models/place.dart';
import 'package:farmacia_app/repositories/place_repository.dart';
import 'package:mobx/mobx.dart';

part 'place_store.g.dart';

class PlaceStore = _PlaceStore with _$PlaceStore;

abstract class _PlaceStore with Store {
  _PlaceStore() {
    _getPlaceList();
  }

  ObservableList<Place> placeList = ObservableList<Place>();

  @action
  Future<void> _getPlaceList() async {
    try {
      placeList.clear();
      final places = await PlaceRepository().getPlace();
      placeList.addAll(places);
    } catch (e) {
      print(e);
    }
  }
}
