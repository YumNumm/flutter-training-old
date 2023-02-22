import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_training/model/enum/weather_category.dart';

class WeatherCategoryItemWidget extends StatelessWidget {
  const WeatherCategoryItemWidget({
    this.category,
    super.key,
  });

  final WeatherCategory? category;

  @override
  Widget build(BuildContext context) {
    if (category == null) {
      return const AspectRatio(
        aspectRatio: 1,
        child: Placeholder(),
      );
    }
    final image = category!.svgImageKey;
    return AspectRatio(
      key: ValueKey(image),
      aspectRatio: 1,
      child: SvgPicture.asset(
        image,
      ),
    );
  }
}
