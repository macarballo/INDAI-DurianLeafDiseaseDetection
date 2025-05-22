import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _image;

  Future<void> _captureImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.camera);
    if (picked != null) {
      setState(() {
        _image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Capture Durian Leaf")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image != null
                ? Image.file(_image!, height: 200)
                : const Icon(Icons.camera_alt, size: 100, color: Colors.grey),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _captureImage,
              child: const Text("Capture Image"),
            ),
            if (_image != null)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/result', arguments: _image);
                },
                child: const Text("Analyze"),
              ),
          ],
        ),
      ),
    );
  }
}
