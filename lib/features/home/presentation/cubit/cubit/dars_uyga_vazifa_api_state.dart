part of 'dars_uyga_vazifa_api_cubit.dart';

abstract class DarsUygaVazifaApiState {}

final class DarsUygaVazifaApiInitial extends DarsUygaVazifaApiState {}

// ignore: camel_case_types
final class loading extends DarsUygaVazifaApiState {}

// ignore: camel_case_types
final class error extends DarsUygaVazifaApiState {
  final String mesage;
  error({required this.mesage});
}

// ignore: camel_case_types
final class loaded extends DarsUygaVazifaApiState {
  final List<dynamic> posts;
  loaded({required this.posts});
}

// ignore: camel_case_types
final class succes extends DarsUygaVazifaApiState {
  final String message;
  succes({ required this.message});
}
