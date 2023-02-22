import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:flutter_training/model/weather_result_view/weather_result_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_result_viewmodel.g.dart';

@riverpod
class WeatherResultViewModel extends _$WeatherResultViewModel {
  @override
  WeatherResultState build() {
    return const WeatherResultState();
  }

  final _api = YumemiWeather();

  void fetchWeather() {
    final result = _api.fetchSimpleWeather();
    final category = WeatherCategory.fromString(result);
    state = state.copyWith(
      category: category,
    );
  }
}
