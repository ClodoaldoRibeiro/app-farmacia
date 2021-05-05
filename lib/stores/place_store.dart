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

  @observable
  bool loading = false;

  @action
  Future<void> _getPlaceList() async {
    try {
      loading = true;
      placeList.clear();
      final places = await PlaceRepository().getPlace();
      placeList.addAll(places);

      loading = false;
    } catch (e) {
      loading = false;
      print(e);
    }
  }
}
