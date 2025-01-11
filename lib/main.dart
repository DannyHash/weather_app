import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/weather_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// The entry point of the Flutter application.
Future<void> main() async {
  // Attempt to load environment variables from the .env file
  try {
    await dotenv.load(fileName: ".env");
  } catch (e) {
    if (kDebugMode) {
      print('Error loading .env file: $e');
    }
  }
  runApp(const WeatherApp());
}

/// The root widget of the application
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const WeatherScreen(),
    );
  }
}
