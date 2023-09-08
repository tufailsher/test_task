import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
class AppTheme{
  static _border({Color color = AppColors.bborderColor}){
    return OutlineInputBorder(borderSide: BorderSide(color: color),borderRadius: BorderRadius.circular(30));
  }
  static _scrollBar()=>  ScrollbarThemeData(
    interactive: true,
    // isAlwaysShown: true,
    radius: const Radius.circular(10.0),
    thumbColor: MaterialStateProperty.all(
        AppColors.bborderColor.withOpacity(0.9)),
    thickness: MaterialStateProperty.all(13.0),
    minThumbLength: 100,
  );

  static ThemeData data()=>
      ThemeData(
        scrollbarTheme: _scrollBar(),
        // canvasColor: Colors.purple,
        // backgroundColor:Colors.purple ,
        // accentColor: Colors.purple,
        // timePickerTheme: TimePickerThemeData(backgroundColor: Colors.purple,dayPeriodColor: Colors.purple,),
        brightness: Brightness.light,
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        // primaryColor: AppColors.primaryColor,
        textTheme:  textTheme,
        inputDecorationTheme: InputDecorationTheme(
            focusedBorder: _border(),
            enabledBorder: _border(),
            errorBorder: _border(color: Colors.red),
            disabledBorder: _border(color: Colors.red),
            border: _border()

        ),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   showSelectedLabels: false,
        //   showUnselectedLabels: false,
        //   selectedIconTheme: IconThemeData(
        //     color: AppColors.bborderColor,
        //     size: 35,
        //   ),
        //   unselectedIconTheme: IconThemeData(
        //     color: AppColors.bborderColor,
        //     size: 25,
        //   ),
        // ),

      );  static  TextTheme textTheme = TextTheme(
    headline1:
    GoogleFonts.roboto(
        fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    headline2: GoogleFonts.roboto(
        fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: FontWeight.w400),
    ///for title
    headline4:
    GoogleFonts.roboto(
        fontSize: 30, fontWeight: FontWeight.w600,color: Colors.black),
    headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: FontWeight.w600,color:AppColors.bborderColor),
    headline6: GoogleFonts.roboto(
        fontSize: 20, fontWeight: FontWeight.bold,color: AppColors.textColor),

    ///for subtitle
    subtitle1: GoogleFonts.roboto(
        fontSize: 18,color: AppColors.textColor,fontWeight: FontWeight.w400 ),

    subtitle2: GoogleFonts.roboto(
        fontSize: 16,color: AppColors.greyColor,fontWeight: FontWeight.w400 ),

    ///body style
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: FontWeight.w400,color: AppColors.bborderColor),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.bborderColor),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: FontWeight.w400,),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: FontWeight.w400,),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
  );
}



// inputDecorationTheme: _inputDecorationTheme(),
// static InputDecorationTheme _inputDecorationTheme()=>InputDecorationTheme(
//   // contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
//   border: OutlineInputBorder(
//     borderSide: const BorderSide(color: Colors.blue),
//     borderRadius: BorderRadius.circular(25),
//   ));







