import 'package:bloctheme/core/theme/bloc/theme_bloc.dart';
import 'package:bloctheme/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'helper/bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver() ;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is LoadedThemeState) {
            return MaterialApp(
                theme: state.themeData,
                debugShowCheckedModeBanner: false,
                home: HomeScreen());
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
