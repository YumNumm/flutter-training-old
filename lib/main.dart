import 'package:flutter/material.dart';
import 'package:flutter_training/ui/theme/theme.dart';
import 'package:flutter_training/ui/view/main_view.dart';

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
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const MainView(),
    );
  }
}
