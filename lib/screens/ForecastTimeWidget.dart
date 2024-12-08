import 'package:flutter/material.dart';


// Widgets
class ForecastTimeWidget extends StatelessWidget {
  final String time;
  final String temp;
  final IconData icon;

  const ForecastTimeWidget({required this.time, required this.temp, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 30, color: Colors.grey),
        const SizedBox(height: 5),
        Text(temp, style: const TextStyle(fontSize: 18)),
        Text(time, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

class WeeklyForecastCard extends StatelessWidget {
  final String day;
  final String temp;
  final IconData icon;

  const WeeklyForecastCard({required this.day, required this.temp, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: ListTile(
        leading: Icon(icon, color: Colors.grey),
        title: Text(day, style: const TextStyle(fontSize: 18)),
        trailing: Text(temp, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}