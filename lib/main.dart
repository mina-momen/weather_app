import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/shared/cubit/bloc_observer.dart';
import 'package:weather/shared/network/remote.dart';
import 'package:weather/src/src.dart';



void main() {
  DioHelper1.init();
  DioHelper2.init();
  Bloc.observer = MyBlocObserver();
  runApp(const AppRoot());
}
