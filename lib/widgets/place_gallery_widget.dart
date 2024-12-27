import 'package:flutter/material.dart';
import 'package:responsive_app_flutter/data/places.dart';
import 'package:responsive_app_flutter/model/place.dart';

import 'grid_item_widget.dart';

class PlaceGalleryWidget extends StatelessWidget {
  final ValueChanged<Place> onPlaceChanged;
  final bool isHorizontal;

  const PlaceGalleryWidget({super.key, required this.onPlaceChanged, this.isHorizontal = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: GridView.count(
        crossAxisCount: isHorizontal ? 1 : 2,
        scrollDirection: isHorizontal ? Axis.horizontal : Axis.vertical,
        children: allPlaces
            .map<Widget>((place) => GridItemWidget(place: place, onPlaceChanged: onPlaceChanged,))
            .toList(),
      ),
    );
  }
}
