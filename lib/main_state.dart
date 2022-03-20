part of 'main_bloc.dart';

abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MainState{
  @override
  List<Object?> get props => [];
}

class LoadedState extends MainState{
  final Weather weather;

  const LoadedState({required this.weather});

  @override
  List<Object?> get props => [weather];

}

class ErrorState extends MainState{
  final Error error;

  const ErrorState({required this.error});

  @override
  List<Object?> get props => [error];

}
