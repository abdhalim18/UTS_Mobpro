import 'package:flutter/material.dart';
import 'dashboard_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Panggilan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Muhammad Abdul Halim\n4122035',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardScreen()),
                );
              },
              child: const Text('Login', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 10),
            const Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              icon: const Icon(Icons.g_mobiledata, color: Colors.black),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              onPressed: () {},
              label: const Text('Sign in with Google', style: TextStyle(color: Colors.black)),
            ),
            const SizedBox(height: 8),
            ElevatedButton.icon(
              icon: const Icon(Icons.apple, color: Colors.black),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              onPressed: () {},
              label: const Text('Sign in with Apple ID', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
