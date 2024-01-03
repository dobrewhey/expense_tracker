import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorSheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
          colorScheme: kColorSheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorSheme.onPrimaryContainer,
            foregroundColor: kColorSheme.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
            color: kColorSheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorSheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: kColorSheme.onSecondaryContainer,
                    fontSize: 14),
              )),
      home: const Expenses(),
    );
  }
}
