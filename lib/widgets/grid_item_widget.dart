import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app_flutter/model/place.dart';
import 'package:responsive_app_flutter/widgets/responsive_widget.dart';

import '../screens/details_screen.dart';

class GridItemWidget extends StatelessWidget {
  final Place place;
  final ValueChanged<Place> onPlaceChanged;

  const GridItemWidget({
    super.key,
    required this.place,
    required this.onPlaceChanged,
  });

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      child: InkWell(
        onTap: () {
          final isMobile = ResponsiveWidget.isMobile(context);
          final isTablet = ResponsiveWidget.isTablet(context);

          if (isMobile || isTablet) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsScreen(place: place),
              ),
            );
          } else {
            onPlaceChanged(place);
          }
        },
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: AutoSizeText(
              place.title,
              minFontSize: 18,
              maxFontSize: 28,
              style: TextStyle(fontSize: fontSize),
            ),
            subtitle: AutoSizeText(
              place.subtitle,
              minFontSize: 14,
              maxFontSize: 20,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.grey[500],
              ),
            ),
          ),
          child: Ink.image(
            image: AssetImage(place.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
