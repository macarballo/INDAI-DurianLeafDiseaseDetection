import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Capture Durian Leaf")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.camera_alt, size: 100, color: Colors.grey),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Capture & Analyze"),
              onPressed: () {
                Navigator.pushNamed(context, '/result');
              },
            ),
          ],
        ),
      ),
    );
  }
}
