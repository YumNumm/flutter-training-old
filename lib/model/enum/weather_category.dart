enum WeatherCategory {
  sunny,
  cloudy,
  rainy;

  static WeatherCategory fromString(String value) {
    return WeatherCategory.values.firstWhere(
      (element) => element.name == value,
      orElse: () => throw ArgumentError('Invalid weather category: $value'),
    );
  }

  String get svgImageKey => 'assets/images/$name.svg';
}
