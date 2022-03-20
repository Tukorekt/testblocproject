

import 'package:equatable/equatable.dart';

class Error extends Equatable{

  final String cod;
  final String message;

  const Error({required this.cod, required this.message});

  Error.fromJson(Map<String, dynamic> json):
      cod = json['cod'],
      message = json['message'];

  @override
  List<Object?> get props => [cod,message];

}