// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
      $weatherResultViewRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: this);
}

GoRoute get $weatherResultViewRoute => GoRouteData.$route(
      path: '/weather_result_view',
      factory: $WeatherResultViewRouteExtension._fromState,
    );

extension $WeatherResultViewRouteExtension on WeatherResultViewRoute {
  static WeatherResultViewRoute _fromState(GoRouterState state) =>
      const WeatherResultViewRoute();

  String get location => GoRouteData.$location(
        '/weather_result_view',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: this);
}
