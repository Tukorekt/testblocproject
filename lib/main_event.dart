part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();
}

class LoadEvent extends MainEvent{
  final String cityName;

  const LoadEvent({required this.cityName});

  @override
  List<Object?> get props => [cityName];
}
