// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FetchWeatherResponse _$$_FetchWeatherResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FetchWeatherResponse(
      weatherCondition:
          $enumDecode(_$WeatherCategoryEnumMap, json['weather_condition']),
      date: DateTime.parse(json['date'] as String),
      maxTemperature: json['max_temperature'] as int,
      minTemperature: json['min_temperature'] as int,
    );

Map<String, dynamic> _$$_FetchWeatherResponseToJson(
        _$_FetchWeatherResponse instance) =>
    <String, dynamic>{
      'weather_condition': _$WeatherCategoryEnumMap[instance.weatherCondition]!,
      'date': instance.date.toIso8601String(),
      'max_temperature': instance.maxTemperature,
      'min_temperature': instance.minTemperature,
    };

const _$WeatherCategoryEnumMap = {
  WeatherCategory.sunny: 'sunny',
  WeatherCategory.cloudy: 'cloudy',
  WeatherCategory.rainy: 'rainy',
};
