import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String name;
  final String price;
  final String image;
  final String description;

  const ProductDetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image, width: 100, height: 100),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              ),
              onPressed: () {
                // Aksi tombol Check Out
              },
              child: const Text(
                "Check Out",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
