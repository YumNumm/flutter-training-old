import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/ui/theme/theme.dart';
import 'package:flutter_training/ui/view/route.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Yumemi Weather',
      theme: lightTheme,
      darkTheme: darkTheme,
      useInheritedMediaQuery: true,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
