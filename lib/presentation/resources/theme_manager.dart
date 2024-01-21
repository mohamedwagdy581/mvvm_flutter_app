import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // Main Colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    // ripple effect color

    // CardView Theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // Appbar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white),
    ),

    // Button Theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    // Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17,),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12,),
        ),
      ),
    ),

    // Text Theme
    textTheme: TextTheme(
      displayLarge: getLightStyle(color: ColorManager.white, fontSize: FontSize.s22,),
      displayMedium: getLightStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16,),
      titleSmall: getLightStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14,),
      labelLarge: getLightStyle(color: ColorManager.grey1,),
      bodyMedium: getLightStyle(color: ColorManager.grey,),
    ),

    // InputDecoration Theme (TextFormField)
    inputDecorationTheme: InputDecorationTheme(
      // Content Padding
      contentPadding: const EdgeInsets.all(AppPadding.p8,),

      // Hint Style
      hintStyle: getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14,),
      // Label Style
      labelStyle: getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14,),
      // Error Style
      errorStyle: getRegularStyle(color: ColorManager.error,),

      // Enabled Border Style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5,),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8,),),
      ),

      // Focused Border Style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey, width: AppSize.s1_5,),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8,),),
      ),

      // Error Border Style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1_5,),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8,),),
      ),

      // Focused ErrorBorder Style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1_5,),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8,),),
      ),
    ),
  );
}
