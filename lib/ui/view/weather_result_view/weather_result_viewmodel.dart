import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:flutter_training/model/weather_result_view/weather_result_state.dart';
import 'package:flutter_training/ui/component/error_dialog.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherResultViewModel extends StateNotifier<WeatherResultState> {
  WeatherResultViewModel() : super(const WeatherResultState());

  final _api = YumemiWeather();

  @Deprecated('fetchThrowsWeatherを使ってください')
  void fetchWeather() {
    final result = _api.fetchSimpleWeather();
    final category = WeatherCategory.fromString(result);
    state = state.copyWith(
      category: category,
    );
  }

  void fetchThrowsWeather() {
    final result = _api.fetchThrowsWeather('area');
    final category = WeatherCategory.fromString(result);
    state = state.copyWith(
      category: category,
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

final weatherResultViewModelProvider =
    StateNotifierProvider<WeatherResultViewModel, WeatherResultState>(
  (ref) => WeatherResultViewModel(),
);
