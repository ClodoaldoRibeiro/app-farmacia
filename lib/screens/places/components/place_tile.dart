import 'package:farmacia_app/models/place.dart';
import 'package:farmacia_app/screens/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaceTile extends StatelessWidget {
  PlaceTile({@required this.place});

  Place place;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 150.0,
            child: Image.network(
              place.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  place.title,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
                Text(
                  place.address,
                  textAlign: TextAlign.start,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text("Ver no Mapa"),
                textColor: AppColors.COR_PRIMARIA,
                padding: EdgeInsets.zero,
                onPressed: () {
                  launch(
                      "https://www.google.com/maps/search/?api=1&query=${place.lat},"
                      "${place.long}");
                },
              ),
              FlatButton(
                child: Text("Ligar"),
                textColor: AppColors.COR_PRIMARIA,
                padding: EdgeInsets.zero,
                onPressed: () {
                  launch("tel:${place.phone}");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
