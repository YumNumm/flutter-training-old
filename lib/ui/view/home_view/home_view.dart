import 'package:flutter/material.dart';
import 'package:flutter_training/ui/view/route.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.endOfFrame.then(
      (_) async {
        await Future<void>.delayed(
          const Duration(milliseconds: 500),
        );
        // ↓ state.mountedでも良い
        if (mounted) {
          const WeatherResultViewRoute().go(context);
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
