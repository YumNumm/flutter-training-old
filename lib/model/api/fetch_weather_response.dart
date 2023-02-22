import 'package:flutter_training/model/enum/weather_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_weather_response.freezed.dart';
part 'fetch_weather_response.g.dart';

@freezed
class FetchWeatherResponse with _$FetchWeatherResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory FetchWeatherResponse({
    required WeatherCategory weatherCondition,
    required DateTime date,
    required int maxTemperature,
    required int minTemperature,
  }) = _FetchWeatherResponse;
  factory FetchWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$FetchWeatherResponseFromJson(json);
}
