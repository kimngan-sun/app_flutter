import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)) {
          return Colors.white; // Màu của dấu check khi được chọn
        } else {
          return Colors.black; // Màu khi không chọn
        }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );


  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states){
      if (states.contains(MaterialState.selected)) {
          return Colors.white; // Màu của dấu check khi được chọn
        } else {
          return Colors.black; // Màu khi không chọn
        }
    }),
    fillColor: MaterialStateProperty.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );
}