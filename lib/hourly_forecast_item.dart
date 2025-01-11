import 'package:flutter/material.dart';

/// A reusable widget to display hourly weather forecast information.
class HourlyForecastItem extends StatelessWidget {
  final String time;
  final String temperature;
  final IconData icon;
  // Constructor to initialize the required properties.
  const HourlyForecastItem(
      {super.key,
      required this.time,
      required this.temperature,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // Displays the time of the forecast.
            Text(
              time,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              temperature,
            ),
          ],
        ),
      ),
    );
  }
}
