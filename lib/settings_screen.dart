
import 'package:bloctheme/core/theme/app_theme.dart';
import 'package:bloctheme/core/theme/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: AppTheme.values.length,
          itemBuilder: (context , index) {
          final itemAppTheme = AppTheme.values[index] ;
          return Card(
            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                'test' ,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),
              onTap: (){
               // BlocProvider.of<ThemeBloc>(context).add(ThemeChangedEvent(theme:itemAppTheme));
              context.read<ThemeBloc>().add(ThemeChangedEvent(theme:itemAppTheme)) ;
              },
            ),
          ) ;
          }) ,
    );
  }
}
