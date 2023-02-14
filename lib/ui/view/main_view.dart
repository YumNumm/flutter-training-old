import 'package:flutter/material.dart';
import 'package:flutter_training/ui/component/weather_result_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        return Scaffold(
          body: SizedBox.expand(
            child: Column(
              children: [
                const Spacer(),
                SizedBox(
                  width: maxWidth / 2,
                  child: const WeatherResultWidget(
                    weather: 'weather',
                    minTemp: 'minTemp',
                    maxTemp: 'maxTemp',
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
