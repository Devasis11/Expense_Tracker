import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

var kColorSchema = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 58, 221, 169),
);

var kDarkColorSchema = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 3, 84, 106),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorSchema,
        cardTheme: CardThemeData().copyWith(
          color: kDarkColorSchema.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorSchema.primaryContainer,
            foregroundColor: kDarkColorSchema.onPrimaryContainer,
          ),
        ), 
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorSchema,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSchema.onPrimaryContainer,
          foregroundColor: kColorSchema.primaryContainer,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorSchema.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSchema.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: kColorSchema.onSecondaryContainer,
            fontSize: 20,
          ),
        ),
      ),
      //themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
