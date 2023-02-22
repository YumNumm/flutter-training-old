import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/ui/view/home_view/home_view.dart';
import 'package:flutter_training/ui/view/route_error_view/route_error_view.dart';
import 'package:flutter_training/ui/view/weather_view/weather_view.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeView();
}

@TypedGoRoute<WeatherViewRoute>(
  path: '/weather_view',
)
class WeatherViewRoute extends GoRouteData {
  const WeatherViewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WeatherView();
}

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    errorBuilder: (context, state) => RouteErrorScreen(state.error!),
  ),
);
