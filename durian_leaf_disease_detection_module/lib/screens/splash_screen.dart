import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFEBCD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Image.asset(
              'assets/images/aidurian_logo.png',
              width: 218,
              height: 180,
            ),
            const SizedBox(height: 5),
            Text(
              'Inspection of Durian using AI (INDAI)',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                height: 1,
                color: Color(0xFF5B2F13),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Durian Leaf',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 34,
                height: 0.9,
                color: Color(0xFF1F5514),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Disease Detection',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 34,
                height: 0.9,
                color: Color(0xFF1F5514),
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'System',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 34,
                height: 0.9,
                color: Color(0xFF1F5514),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 180),
            Text(
              'This application is developed for the University of the',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 11,
                color: Color(0xFF5B2F13),
              ),
            ),
            Text(
              'Philippines - Mindanao AI Durian Project. It aims to',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 11,
                height: 1.2,
                color: Color(0xFF5B2F13),
              ),
            ),
            Text(
              'detect durian leaf diseases using deep learning.',
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 11,
                height: 1.2,
                color: Color(0xFF5B2F13),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1F5514),
                fixedSize: const Size(280, 55), // Width x Height
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    8,
                  ), // Optional: Rounded corners
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xFFFFEBCD), // Text color
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
