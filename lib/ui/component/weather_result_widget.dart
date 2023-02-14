import 'package:flutter/material.dart';
import 'package:flutter_training/ui/component/weather_item_widget.dart';

class WeatherResultWidget extends StatelessWidget {
  const WeatherResultWidget({
    required this.weather,
    required this.minTemp,
    required this.maxTemp,
    super.key,
  });

  final String weather;
  final String minTemp;
  final String maxTemp;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const WeatherItemWidget(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                minTemp,
                style: t.textTheme.labelLarge?.copyWith(
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                maxTemp,
                style: t.textTheme.labelLarge?.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
