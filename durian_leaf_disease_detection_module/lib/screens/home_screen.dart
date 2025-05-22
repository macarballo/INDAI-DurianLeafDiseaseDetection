import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _captureAndNavigate(BuildContext context) async {
    final picker = ImagePicker();
    final picked = await picker.pickImage(source: ImageSource.camera);

    if (picked != null) {
      final imageFile = File(picked.path);
      Navigator.pushNamed(context, '/result', arguments: imageFile);
    } else {
      // User cancelled the camera
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('No image captured')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDE7C5),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                // Logo and Title
                Row(
                  children: [
                    Image.asset('assets/images/aidurian_logo.png', height: 55),
                    const SizedBox(width: 5),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Inspection of Durian using AI (INDAI)',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF5B2F13),
                            ),
                          ),
                          Text(
                            'Durian Leaf Disease Detection System',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F5514),
                              height: 0.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome!',
                    style: TextStyle(
                      height: 0.5,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F5514),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Container(
                  height: 225,
                  width: 310,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 50,
                      color: Color(0xFFFDE7C5),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/upload');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1F5514),
                        foregroundColor: const Color(0xFFFFEBCD),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("Upload"),
                    ),

                    const SizedBox(width: 10),

                    const Icon(
                      Icons.camera_alt,
                      color: Color(0xFF5B2F13),
                      size: 28,
                    ),

                    const SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: () {
                        _captureAndNavigate(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1F5514),
                        foregroundColor: const Color(0xFFFFEBCD),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text("Capture"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
