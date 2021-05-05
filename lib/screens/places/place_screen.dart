import 'package:farmacia_app/screens/places/components/place_tile.dart';
import 'package:farmacia_app/stores/place_store.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatelessWidget {
  PlaceScreen() {
    _placeStore = PlaceStore();
  }

  PlaceStore _placeStore;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Lojas"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return PlaceTile(
            place: _placeStore.placeList[index],
          );
        },
        itemCount: _placeStore.placeList.length,
      ),
    );
  }
}
