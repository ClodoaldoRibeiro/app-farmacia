import 'package:farmacia_app/screens/places/components/place_tile.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:farmacia_app/stores/place_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PlaceScreen extends StatelessWidget {
  PlaceScreen() {
    _placeStore = PlaceStore();
  }

  PlaceStore _placeStore;
  @override
  Widget build(BuildContext context) {
    print(_placeStore.placeList);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Lojas"),
        ),
        body: Observer(
          builder: (context) {
            if (_placeStore.placeList.isEmpty ) {
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(AppColors.COR_PRIMARIA),
                ),
              );
            }
            return ListView.builder(
              padding: const EdgeInsets.all(5.0),
              itemBuilder: (context, index) {
                return PlaceTile(place: _placeStore.placeList[index]);
              },
              itemCount: _placeStore.placeList.length,
            );
          },
        ));
  }
}
