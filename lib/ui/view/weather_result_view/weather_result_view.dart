import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:flutter_training/ui/component/weather_item_widget.dart';
import 'package:flutter_training/ui/view/weather_result_view/weather_result_viewmodel.dart';

class WeatherResultView extends ConsumerWidget {
  const WeatherResultView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(weatherResultViewModelProvider);

    return Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              const Spacer(),
              WeatherResultWidget(
                minTemp: '**°C',
                maxTemp: '**°C',
                category: state.category,
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
                            onPressed: () => ref
                                .read(weatherResultViewModelProvider.notifier)
                                .fetchWeather(),
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

class WeatherResultWidget extends StatelessWidget {
  const WeatherResultWidget({
    required this.minTemp,
    required this.maxTemp,
    required this.category,
    super.key,
  });

  final String minTemp;
  final String maxTemp;
  final WeatherCategory? category;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);

    return FractionallySizedBox(
      widthFactor: 0.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            switchInCurve: Curves.easeOutCirc,
            switchOutCurve: Curves.easeInQuad,
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              );
            },
            child: WeatherCategoryItemWidget(
              key: ValueKey(category),
              category: category,
            ),
          ),
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
    );
  }
}
