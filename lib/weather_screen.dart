import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          // Main Card
          const Placeholder(
            fallbackHeight: 250,
          ),
          const SizedBox(height: 20),

          // Weather Forecast Cards
          const Placeholder(
            fallbackHeight: 150,
          ),
          const SizedBox(height: 20),

          // Additional Information
          const Placeholder(
            fallbackHeight: 150,
          ),
        ],
      ),
    );
  }
}
