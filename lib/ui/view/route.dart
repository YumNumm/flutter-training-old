import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/ui/view/home_view/home_view.dart';
import 'package:flutter_training/ui/view/route_error_view/route_error_view.dart';
import 'package:flutter_training/ui/view/weather_result_view/weather_result_view.dart';
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

@TypedGoRoute<WeatherResultViewRoute>(
  path: '/weather_result_view',
)
class WeatherResultViewRoute extends GoRouteData {
  const WeatherResultViewRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WeatherResultView();
}

final routerProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    errorBuilder: (context, state) => RouteErrorScreen(state.error!),
  ),
);
