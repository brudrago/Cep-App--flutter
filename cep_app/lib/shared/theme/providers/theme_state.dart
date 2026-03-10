import 'package:equatable/equatable.dart';

enum ThemeStateEnum { light, dark }

class ThemeState extends Equatable {
  final ThemeStateEnum themeState;

  const ThemeState({this.themeState = ThemeStateEnum.light});

ThemeMode get themeMode => themeState == ThemeStateEnum.light ? ThemeMode.light : ThemeMode.dark;

  @override
  List<Object?> get props => [themeState];
}