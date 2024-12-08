import 'package:flutter/material.dart';
import 'package:weatherapp/screens/ForecastTimeWidget.dart';

// Weekly Forecast Screen
class WeeklyForecastScreen extends StatelessWidget {
  const WeeklyForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B2C6F),
      appBar: AppBar(
        title: const Text('Weekly Forecast'),
        backgroundColor: const Color(0xFF5B2C6F),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  WeeklyForecastCard(day: 'Mon', temp: '19°', icon: Icons.cloud),
                  WeeklyForecastCard(day: 'Tue', temp: '18°', icon: Icons.cloud),
                  WeeklyForecastCard(day: 'Wed', temp: '18°', icon: Icons.cloud),
                  WeeklyForecastCard(day: 'Thu', temp: '19°', icon: Icons.cloud),
                  WeeklyForecastCard(day: 'Fri', temp: '20°', icon: Icons.cloud),
                  WeeklyForecastCard(day: 'Sat', temp: '19°', icon: Icons.cloud),
                  WeeklyForecastCard(day: 'Sun', temp: '19°', icon: Icons.cloud),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 250),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Air Quality: 3-Low Health Risk', 
                  style: TextStyle( color: Colors.black)),
                  Divider(),
                  Text('Sunrise: 5:28 AM  |  Sunset: 7:25 PM',
                  style: TextStyle( color: Colors.black)),
                  Divider(),
                  Text('UV Index: 4 Moderate',style: TextStyle( color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
