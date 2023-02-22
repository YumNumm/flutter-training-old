import 'package:flutter/material.dart';
import 'package:flutter_training/ui/route.dart';

class RouteErrorScreen extends StatelessWidget {
  const RouteErrorScreen(this.error, {super.key});
  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Error')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(error.toString()),
            ElevatedButton.icon(
              onPressed: () => const HomeRoute().go(context),
              label: const Text(
                'An error occurred while navigating to the requested page',
              ),
              icon: const Icon(Icons.arrow_back),
            ),
          ],
        ),
      ),
    );
  }
}
