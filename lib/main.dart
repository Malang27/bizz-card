import 'package:flutter/material.dart';

void main() {
  runApp(const BizzCardApp());
}

class BizzCardApp extends StatelessWidget {
  const BizzCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('BizzCard'),
        ),
        body: const BizzCard(),
      ),
    );
  }
}

class BizzCard extends StatelessWidget {
  const BizzCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile picture
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.jpg'), // Add your image in assets folder
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // First Name and Last Name
            const Text(
              'John Doe',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Age
            const Text(
              'Age: 25',
              style: TextStyle(fontSize: 20),
            ),
            // Email
            const Text(
              'Email: john.doe@example.com',
              style: TextStyle(fontSize: 20),
            ),
            // Phone Number
            const Text(
              'Phone: +1 123-456-7890',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}