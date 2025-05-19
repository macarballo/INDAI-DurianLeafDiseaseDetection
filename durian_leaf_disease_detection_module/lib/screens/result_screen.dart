import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder values
    const disease = "Leaf Blight";
    const description = "Fungal disease causing leaf browning and decay.";
    const symptoms = "Yellow spots, browning edges, leaf drop.";
    const treatment = "Use fungicide, prune infected leaves, improve drainage.";

    return Scaffold(
      appBar: AppBar(title: const Text("Diagnosis Result")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Disease Detected:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(disease, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 16),
                const Text(
                  "Description:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(description),
                const SizedBox(height: 16),
                const Text(
                  "Symptoms:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(symptoms),
                const SizedBox(height: 16),
                const Text(
                  "Recommended Treatment:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(treatment),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    label: const Text("Save Result"),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Result saved locally.")),
                      );
                    },
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
