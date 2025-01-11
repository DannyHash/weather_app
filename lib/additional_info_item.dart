import 'package:flutter/material.dart';

/// A reusable widget to display additional weather information
class AdditionalInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  // Constructor to initialize the required properties.
  const AdditionalInfoItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Icon widget to display the provided icon.
        Icon(
          icon,
          size: 32,
        ),
        const SizedBox(height: 8),
        Text(label),
        const SizedBox(height: 8),
        // Text widget to display the value
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
