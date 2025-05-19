import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/camera_screen.dart';
import 'screens/upload_screen.dart';
import 'screens/result_screen.dart';

void main() => runApp(const IndaiApp());

class IndaiApp extends StatelessWidget {
  const IndaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INDAI - Durian Leaf Disease Detection',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/camera': (context) => const CameraScreen(),
        '/upload': (context) => const UploadScreen(),
        '/result': (context) => const ResultScreen(),
      },
    );
  }
}
