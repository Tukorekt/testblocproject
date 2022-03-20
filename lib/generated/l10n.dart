// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `To find out the weather in a city,\nenter its name in the search on the top right`
  String get hint {
    return Intl.message(
      'To find out the weather in a city,\nenter its name in the search on the top right',
      name: 'hint',
      desc: '',
      args: [],
    );
  }

  /// `en`
  String get lang {
    return Intl.message(
      'en',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `City:`
  String get city {
    return Intl.message(
      'City:',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Country:`
  String get country {
    return Intl.message(
      'Country:',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Description:`
  String get description {
    return Intl.message(
      'Description:',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Temp, C:`
  String get temp {
    return Intl.message(
      'Temp, C:',
      name: 'temp',
      desc: '',
      args: [],
    );
  }

  /// `Wind, m/s:`
  String get wind {
    return Intl.message(
      'Wind, m/s:',
      name: 'wind',
      desc: '',
      args: [],
    );
  }

  /// `Moscow`
  String get Moscow {
    return Intl.message(
      'Moscow',
      name: 'Moscow',
      desc: '',
      args: [],
    );
  }

  /// `Washington DC`
  String get Washington_DC {
    return Intl.message(
      'Washington DC',
      name: 'Washington_DC',
      desc: '',
      args: [],
    );
  }

  /// `Minsk`
  String get Minsk {
    return Intl.message(
      'Minsk',
      name: 'Minsk',
      desc: '',
      args: [],
    );
  }

  /// `Brasilia`
  String get Brasilia {
    return Intl.message(
      'Brasilia',
      name: 'Brasilia',
      desc: '',
      args: [],
    );
  }

  /// `London`
  String get London {
    return Intl.message(
      'London',
      name: 'London',
      desc: '',
      args: [],
    );
  }

  /// `Berlin`
  String get Berlin {
    return Intl.message(
      'Berlin',
      name: 'Berlin',
      desc: '',
      args: [],
    );
  }

  /// `Rome`
  String get Rome {
    return Intl.message(
      'Rome',
      name: 'Rome',
      desc: '',
      args: [],
    );
  }

  /// `Ottawa`
  String get Ottawa {
    return Intl.message(
      'Ottawa',
      name: 'Ottawa',
      desc: '',
      args: [],
    );
  }

  /// `Beijing`
  String get Beijing {
    return Intl.message(
      'Beijing',
      name: 'Beijing',
      desc: '',
      args: [],
    );
  }

  /// `Mexico City`
  String get Mexico_City {
    return Intl.message(
      'Mexico City',
      name: 'Mexico_City',
      desc: '',
      args: [],
    );
  }

  /// `Amsterdam`
  String get Amsterdam {
    return Intl.message(
      'Amsterdam',
      name: 'Amsterdam',
      desc: '',
      args: [],
    );
  }

  /// `Singapore`
  String get Singapore {
    return Intl.message(
      'Singapore',
      name: 'Singapore',
      desc: '',
      args: [],
    );
  }

  /// `Kiev`
  String get Kiev {
    return Intl.message(
      'Kiev',
      name: 'Kiev',
      desc: '',
      args: [],
    );
  }

  /// `Paris`
  String get Paris {
    return Intl.message(
      'Paris',
      name: 'Paris',
      desc: '',
      args: [],
    );
  }

  /// `Tokyo`
  String get Tokyo {
    return Intl.message(
      'Tokyo',
      name: 'Tokyo',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
