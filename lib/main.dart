import 'package:bytebank2/screens/dashboard.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch:  Colors.green,
          ).copyWith(
              primary: Colors.green[900],
              secondary: Colors.blueAccent[700]
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(
                backgroundColor: Colors.blueAccent[700],
            ),
          ),
      ),
      home: const Dashboard(),
    );
  }
}