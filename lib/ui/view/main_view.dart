import 'package:flutter/material.dart';
import 'package:flutter_training/ui/component/weather_item_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              const Spacer(),
              FractionallySizedBox(
                widthFactor: 0.5,
                child: Column(
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
                            'minTemp',
                            style: t.textTheme.labelLarge?.copyWith(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'maxTemp',
                            style: t.textTheme.labelLarge?.copyWith(
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Close'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Reload'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
