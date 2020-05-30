import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

class WeatherModel {
  static const String OW_MAP_URL = 'https://api.openweathermap.org/data/2.5/weather';
  static const String OW_API_KEY = 'efc0b7ea52ff11631dd621916237d99e';

  Future<dynamic> getCityWeather(String cityName) async {
    var url = '${OW_MAP_URL}?q=${cityName}&units=metric&appid=${OW_API_KEY}';
    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '${OW_MAP_URL}?lat=${location.latitude}&lon=${location.longitude}&units=metric&appid=${OW_API_KEY}');

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
