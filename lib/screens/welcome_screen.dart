import 'package:flutter/material.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.balance, size: 60, color: Colors.black),
              const SizedBox(height: 20),
              const Text(
                "JusticeBot",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Your Legal Help, Simplified",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
                icon: const Icon(Icons.arrow_forward),
                label: const Text("Get Started"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 12,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                value: 'English',
                items:
                    ['English', 'Hindi', 'Tamil', 'Bengali'].map((lang) {
                      return DropdownMenuItem(value: lang, child: Text(lang));
                    }).toList(),
                onChanged: (value) {},
              ),
              const SizedBox(height: 40),
              const Text(
                "By continuing, you agree to our Terms & Privacy Policy",
                style: TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
