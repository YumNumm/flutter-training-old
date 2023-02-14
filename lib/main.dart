import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yumemi Weather',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(),
      ),
    );
  }
}
