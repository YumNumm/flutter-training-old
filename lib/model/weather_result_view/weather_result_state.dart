import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_result_state.freezed.dart';

@freezed
class WeatherResultState with _$WeatherResultState {
  const factory WeatherResultState({
    @Default(null) WeatherCategory? category,
  }) = _WeatherResultState;
}
