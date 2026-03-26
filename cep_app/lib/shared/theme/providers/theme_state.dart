import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

enum ThemeStateEnum { light, dark }

class ThemeState extends Equatable {
  final ThemeStateEnum themeState;

  const ThemeState({this.themeState = ThemeStateEnum.light});

  ThemeMode get themeMode => themeState == ThemeStateEnum.light ? ThemeMode.light : ThemeMode.dark;

  ThemeState copyWith({ThemeStateEnum? themeState}) {
    return ThemeState(themeState: themeState ?? this.themeState);
  }

  @override
  List<Object?> get props => [themeState];
}