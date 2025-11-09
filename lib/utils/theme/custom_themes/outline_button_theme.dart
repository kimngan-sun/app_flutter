import 'package:flutter/material.dart';

class TOutlineButtonTheme {
  TOutlineButtonTheme._();

  static final OutlinedButtonThemeData lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.black, // Màu chữ mặc định
      side: const BorderSide(color: Colors.grey, width: 1.2), // Viền nút
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      textStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ).copyWith(
      // Màu chữ và viền khi bấm
      foregroundColor: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)) {
            return Colors.blueAccent; // Màu chữ khi nhấn
          }
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey.shade400; // Màu chữ khi bị vô hiệu hóa
          }
          return Colors.black; // Mặc định
        }),
      side: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: Colors.blueAccent, width: 1.5);
          }
          if (states.contains(MaterialState.disabled)) {
            return BorderSide(color: Colors.grey.shade300, width: 1);
          }
          return const BorderSide(color: Colors.grey, width: 1.2);
      }),
    ),
  );
  static final OutlinedButtonThemeData darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white, // Màu chữ mặc định
      side: const BorderSide(color: Colors.grey, width: 1.2), // Viền nút
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      textStyle: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
    ).copyWith(
      // Màu chữ và viền khi bấm
      foregroundColor: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)) {
            return Colors.blueAccent; // Màu chữ khi nhấn
          }
          if (states.contains(MaterialState.disabled)) {
            return Colors.grey.shade600; // Màu chữ khi bị vô hiệu hóa
          }
          return Colors.black; // Mặc định
        }),
      side: MaterialStateProperty.resolveWith((states){
          if (states.contains(MaterialState.pressed)) {
            return const BorderSide(color: Colors.blueAccent, width: 1.5);
          }
          if (states.contains(MaterialState.disabled)) {
            return BorderSide(color: Colors.grey.shade300, width: 1);
          }
          return const BorderSide(color: Colors.grey, width: 1.2);
      }),
    ),
  );
}