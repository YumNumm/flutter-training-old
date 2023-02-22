import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/api/fetch_weather_request.dart';
import 'package:flutter_training/model/api/fetch_weather_response.dart';
import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:flutter_training/model/weather_result_view/weather_result_state.dart';
import 'package:flutter_training/ui/component/error_dialog.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherViewModel extends StateNotifier<WeatherResultState> {
  WeatherViewModel() : super(const WeatherResultState());

  final _api = YumemiWeather();

  @Deprecated('fetchWeatherを使ってください')
  void fetchSimpleWeather() {
    final result = _api.fetchSimpleWeather();
    final category = WeatherCategory.fromString(result);
    state = state.copyWith(
      category: category,
    );
  }

  @Deprecated('fetchWeatherを使ってください')
  void fetchThrowsWeather() {
    final result = _api.fetchThrowsWeather('area');
    final category = WeatherCategory.fromString(result);
    state = state.copyWith(
      category: category,
    );
  }

  void fetchWeather() {
    final req = FetchWeatherRequest(
      area: 'area',
      date: DateTime.now(),
    );
    final result = _api.fetchWeather(json.encode(req));
    final response = FetchWeatherResponse.fromJson(
      json.decode(result) as Map<String, dynamic>,
    );
    // update state
    state = state.copyWith(
      category: response.weatherCondition,
      maxTemp: response.maxTemperature,
      minTemp: response.minTemperature,
    );
  }

  Future<void> showErrorDialog({
    required String title,
    required String description,
    required List<Widget> actions,
    required BuildContext context,
  }) =>
      showDialog<void>(
        context: context,
        builder: (context) => ErrorDialogWidget(
          title: title,
          description: description,
          actions: actions,
        ),
        barrierDismissible: false,
      );
}

final weatherViewModelProvider =
    StateNotifierProvider<WeatherViewModel, WeatherResultState>(
  (ref) => WeatherViewModel(),
);
