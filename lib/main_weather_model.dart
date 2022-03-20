import 'package:equatable/equatable.dart';

class Weather extends Equatable {
  final num coordLon;
  final num coordLat;

  final num weatherId;
  final String weatherMain;
  final String weatherDescription;
  final String weatherIcon;

  final String base;

  final num mainTemp;
  final num mainFeelsLike;
  final num mainMin;
  final num mainMax;
  final num mainPressure;
  final num mainHumidity;

  final num visibility;

  final num windSpeed;
  final num windDeg;

  final num cloudsAll;
  final num dt;

  final num sysType;
  final num sysId;
  final String sysCountry;
  final num sysSunrise;
  final num sysSunset;

  final num timezone;
  final num id;
  final String name;
  final num cod;

  const Weather(
      {required this.coordLon,
      required this.coordLat,
      required this.weatherId,
      required this.weatherMain,
      required this.weatherDescription,
      required this.weatherIcon,
      required this.base,
      required this.mainTemp,
      required this.mainFeelsLike,
      required this.mainMin,
      required this.mainMax,
      required this.mainPressure,
      required this.mainHumidity,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.cloudsAll,
      required this.dt,
      required this.sysType,
      required this.sysId,
      required this.sysCountry,
      required this.sysSunrise,
      required this.sysSunset,
      required this.timezone,
      required this.id,
      required this.name,
      required this.cod});

  Weather.fromJson(Map<String, dynamic> json)
      : coordLon = json['coord']['lon'],
        coordLat = json['coord']['lon'],
        weatherId = json['weather'][0]['id'],
        weatherMain = json['weather'][0]['main'],
        weatherDescription = json['weather'][0]['description'],
        weatherIcon = json['weather'][0]['icon'],
        base = json['base'],
        mainTemp = json['main']['temp'],
        mainFeelsLike = json['main']['feels_like'],
        mainMin = json['main']['temp_min'],
        mainMax = json['main']['temp_max'],
        mainPressure = json['main']['pressure'],
        mainHumidity = json['main']['humidity'],
        visibility = json['visibility'],
        windSpeed = json['wind']['speed'],
        windDeg = json['wind']['deg'],
        cloudsAll = json['clouds']['all'],
        dt = json['dt'],
        sysType = json['sys']['type'],
        sysId = json['sys']['id'],
        sysCountry = json['sys']['country'],
        sysSunrise = json['sys']['sunrise'],
        sysSunset = json['sys']['sunset'],
        timezone = json['timezone'],
        id = json['id'],
        name = json['name'],
        cod = json['cod'];

  @override
  List<Object?> get props =>
      [name, sysCountry, mainTemp, windSpeed, weatherDescription];
}
