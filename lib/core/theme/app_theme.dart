import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF5E35B1); // Roxo/Azul principal
  static const Color successColor = Color(0xFF4CAF50); // Verde para metas concluídas
  static const Color backgroundColor = Color(0xFFF5F5F5); // Fundo Cinza Claro
  static const Color highlightColor = Color(0xFFFFB300); // Amarelo/Laranja para destaques

  static ThemeData get theme {
    return ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        secondary: highlightColor,
        background: backgroundColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}