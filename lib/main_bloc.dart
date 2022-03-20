import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:testblocproject/main_weather_model.dart';
import 'package:testblocproject/main_error_model.dart';

import 'generated/l10n.dart';

part 'main_event.dart';
part 'main_state.dart';


class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<LoadEvent>((event, emit) async {
      emit(LoadingState());
      var url = "http://api.openweathermap.org/data/2.5/weather?q=${event.cityName}&appid=5346e3aaf430e1ccb84c6e0af4867c27&lang=${S.current.lang}&units=metric";
      var response = await http.get(Uri.parse(url));
      var respMap = jsonDecode(response.body);
      try {
        emit(LoadedState(weather: Weather.fromJson(respMap)));
      } catch (e){
        try {
          emit(ErrorState(error: Error.fromJson(respMap)));
        } catch (e){
          emit(const ErrorState(error: Error(message: 'Some error', cod: '0')));
        }

      }
    });
  }
}
