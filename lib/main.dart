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
          actions: [
            // Icône de partage
            IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                // Action pour partager (optionnel)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Partage non implémenté')),
                );
              },
            ),
            // Icône d'information
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                // Action pour info (optionnel)
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('À propos de BizzCard')),
                );
              },
            ),
          ],
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
            // Photo de profil
            Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Prénom et nom
            const Text(
              'Malang Coulibaly',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Âge
            const Text(
              'Age: 26',
              style: TextStyle(fontSize: 20),
            ),
            // Email
            const Text(
              'Email: mvlang27@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
            // Numéro de téléphone
            const Text(
              'Phone: +221 77-594-56-91',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}