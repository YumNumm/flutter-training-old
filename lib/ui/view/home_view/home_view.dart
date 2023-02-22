import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/ui/mixin/delayed_action.dart';
import 'package:flutter_training/ui/view/route.dart';

class HomeView extends ConsumerWidget with DelayedActionMixin {
  HomeView({super.key});

  @override
  // ignore: overridden_fields
  final delayDuration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    registerDelayedAction(context, () {
      // 直近のRouteを取得
      final router = ref.read(routerProvider);
      // 既にWeatherResultViewに遷移している場合は何もしない
      if (router.location == const WeatherViewRoute().location) {
        return;
      }
      const WeatherViewRoute().push(context);
    });

    return const SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
      ),
    );
  }
}
