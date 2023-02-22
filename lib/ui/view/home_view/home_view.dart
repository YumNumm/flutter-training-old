import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/ui/view/route.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    WidgetsBinding.instance.endOfFrame.then(
      (_) async {
        await Future<void>.delayed(
          const Duration(milliseconds: 500),
        );
        // ↓ state.mountedでも良い
        if (context.mounted) {
          // 直近のRouteを取得
          final router = ref.read(routerProvider);
          // 既にWeatherResultViewに遷移している場合は何もしない
          if (router.location == const WeatherResultViewRoute().location) {
            return;
          }
          const WeatherResultViewRoute().push(context);
        }
      },
    );
    return const SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.green,
        ),
      ),
    );
  }
}
