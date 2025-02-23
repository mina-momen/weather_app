import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/cubit/weather_app_cubit.dart';
import '../shared/cubit/weather_app_state.dart';
import '../shared/styles/color.dart';

// ignore: must_be_immutable
class WeatherHomeLayout extends StatelessWidget {
  WeatherHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherAppCubit, WeatherAppState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = WeatherAppCubit.get(context);
        return Scaffold(
          appBar: cubit.appBars[cubit.currentIndex],
          bottomNavigationBar: CurvedNavigationBar(
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
                size: 40.0,
              ),
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 40.0,
              ),
              Icon(
                Icons.person,
                color: Colors.white,
                size: 40.0,
              ),
            ],
            height: 65.0,
            color: navBarColor,
            backgroundColor: const Color(0xfff1fbfd),
            index: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNavBar(index);
            },
          ),
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}
