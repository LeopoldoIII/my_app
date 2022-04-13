import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Locations = Location.fetchAll();

    return Scaffold(
        appBar: AppBar(
          title: Text('Locations'),
        ),
        body: ListView(
            children: Locations.map((location) => GestureDetector(
                  child: Text(location.name),
                  onTap: () => _onLocationTap(context, location.id),
                )).toList()));
  }

  _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': locationID});
  }
}
