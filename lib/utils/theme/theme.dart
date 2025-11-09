import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/check_box_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/outline_button_theme.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/text_themes.dart';
import 'package:flutter_application_1/utils/theme/custom_themes/elevated_button_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue, 
    textTheme:TTextThemes.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlinedButtonTheme,
    // inputDecorationTheme: TTextThemes.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue, 
    textTheme:TTextThemes.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlinedButtonTheme,
    // inputDecorationTheme: TTextThemes.darkTextTheme,
  );
}