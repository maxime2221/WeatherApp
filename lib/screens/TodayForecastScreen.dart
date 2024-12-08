import 'package:flutter/material.dart';
import 'package:weatherapp/screens/ForecastTimeWidget.dart';
import 'package:weatherapp/screens/WeeklyForecastScreen.dart';
// Today Forecast Screen
class TodayForecastScreen extends StatelessWidget {
  const TodayForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B2C6F),
      appBar: AppBar(
        title: const Text('Today\'s Forecast'),
        backgroundColor: const Color(0xFF5B2C6F),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Icon(Icons.cloud, size: 120, color: Colors.white),
                const SizedBox(height: 10),
                const Text(
                  '19°',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                const Text(
                  'Precipitations',
                  style: TextStyle(fontSize: 20, color: Colors.white54),
                ),
                const Text(
                  'Max: 24°  Min: 18°',
                  style: TextStyle(fontSize: 18, color: Colors.white54),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 175, 79, 216),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Today', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
                      Text('July, 21', style: TextStyle(fontSize: 18, color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                      ForecastTimeWidget(time: '15:00', temp: '19°', icon: Icons.cloud),
                      ForecastTimeWidget(time: '16:00', temp: '18°', icon: Icons.cloud),
                      ForecastTimeWidget(time: '17:00', temp: '18°', icon: Icons.cloud),
                      ForecastTimeWidget(time: '18:00', temp: '19°', icon: Icons.cloud),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF5B2C6F),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Forecast'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const WeeklyForecastScreen()),
            );
          }
        },
      ),
    );
  }
}
