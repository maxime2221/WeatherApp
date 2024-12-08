// ignore: file_names
import 'package:flutter/material.dart';
import 'package:weatherapp/screens/TodayForecastScreen.dart';

// Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 24, 29, 64), // hsl(229.57deg 41.82% 21.57%)
              Color.fromARGB(255, 184, 103, 221), // hsl(246.98deg 42.16% 40%)
              Color.fromARGB(255, 144, 42, 223)
, // hsl(277.5deg 38.4% 49.02%)
            ],
            stops: [0.33, 0.66, 1.0], // Proportions pour chaque couleur
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.cloud, size: 150, color: Colors.white),
              const Text(
                'Weather ',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4.0,
                ),
              ),
              const Text(
                'ForeCasts',
                style: TextStyle(
                  fontSize: 32,
                  color: Color.fromARGB(255, 255, 193, 7),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 4.0,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC107),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TodayForecastScreen()),
                  );
                },
                child: const Text(
                  'Get Start',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
