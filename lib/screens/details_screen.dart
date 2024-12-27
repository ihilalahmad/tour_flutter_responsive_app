import 'package:flutter/material.dart';
import 'package:responsive_app_flutter/model/place.dart';

import '../widgets/place_details_widget.dart';

class DetailsScreen extends StatelessWidget {
  final Place place;
  const DetailsScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(place.subtitle),),
      body: PlaceDetailsWidget(place: place),
    );
  }
}
