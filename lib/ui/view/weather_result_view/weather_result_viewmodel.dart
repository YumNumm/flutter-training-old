import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:flutter_training/model/weather_result_view/weather_result_state.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherResultViewModel extends StateNotifier<WeatherResultState> {
  WeatherResultViewModel() : super(const WeatherResultState());

  final _api = YumemiWeather();

  void fetchWeather() {
    final result = _api.fetchSimpleWeather();
    final category = WeatherCategory.fromString(result);
    state = state.copyWith(
      category: category,
    );
  }
}

final weatherResultViewModelProvider =
    StateNotifierProvider<WeatherResultViewModel, WeatherResultState>(
  (ref) => WeatherResultViewModel(),
);
