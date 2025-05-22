import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String diseaseName = 'Leaf Blight';
    const String symptoms =
        'Large, irregular brown lesions that may coalesce and cause leaf death.';
    const String treatments =
        'Prune affected leaves. Apply appropriate fungicide and improve sanitation.';

    return Scaffold(
      backgroundColor: const Color(0xFFFDE7C5),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // Header
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
                const SizedBox(height: 50),

                // Image with border
                Container(
                  height: 225,
                  width: 310,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(
                      'assets/images/disease_sample.jpg',
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "The leaf is infected with",
                  style: TextStyle(
                    color: Color(0xFF5B2F13),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    height: 0.8,
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 90,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1F5514),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    diseaseName,
                    style: TextStyle(
                      color: Color(0xFFFDE7C5),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Details Box
                Center(
                  child: Container(
                    width:
                        300, // You can adjust this width to match your target appearance
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFCDC673),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Symptoms",
                          style: TextStyle(
                            color: Color(0xFF5B2F13),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          symptoms,
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 13.5,
                            color: Color(0xFF1F5514),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Treatments",
                          style: TextStyle(
                            color: Color(0xFF5B2F13),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          treatments,
                          style: TextStyle(
                            height: 1.4,
                            fontSize: 13.5,
                            color: Color(0xFF1F5514),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
