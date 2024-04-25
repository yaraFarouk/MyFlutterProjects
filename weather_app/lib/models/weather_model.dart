class WeatherModel {
  final String cityName;
  final DateTime lastUpdate;
  final String image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String condition;
  WeatherModel(
      {required this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.condition,
      required this.cityName,
      required this.lastUpdate});
  factory WeatherModel.formJson(json) {
    return WeatherModel(
        image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
        maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        condition: json['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        cityName: json['location']['name'],
        lastUpdate: DateTime.parse(json['current']['last_updated']));
  }
}
