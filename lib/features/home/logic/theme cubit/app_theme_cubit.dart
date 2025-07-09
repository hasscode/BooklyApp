import 'package:booklyapp/core/constants.dart';
import 'package:booklyapp/features/home/data/enums/theme_states_enum.dart';
import 'package:booklyapp/features/home/logic/theme%20cubit/app_theme_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppThemeCubit extends Cubit<AppThemeState>{
  AppThemeCubit() :super(AppThemeInitialState());
bool? isDarkTheme;
changeTheme(ThemeState state){
  switch(state){
    case ThemeState.initial:
      if(sharedPreferences!.getString('theme')!=null){

        if(sharedPreferences!.getString('theme')=='l'){
          isDarkTheme=false;
          emit(LightThemeState());
        }
        else{isDarkTheme=true; emit(DarkThemeState());}
      }
      else{
        if(ThemeMode.system==ThemeMode.light){
          isDarkTheme=false;
          emit(LightThemeState());
        }
        else{ isDarkTheme=true; emit(DarkThemeState());}
      }

    case ThemeState.light :
      sharedPreferences!.setString('theme', 'l');
      isDarkTheme=false;
      emit(LightThemeState());
      break;
    case ThemeState.dark:
      sharedPreferences!.setString('theme', 'd');
      isDarkTheme=true;
      emit(DarkThemeState());
      break;

  }
}
}