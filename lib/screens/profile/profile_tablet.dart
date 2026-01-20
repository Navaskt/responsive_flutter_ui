import 'package:flutter/material.dart';

class ProfileTablet extends StatelessWidget {
  const ProfileTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile (Tablet)')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              child: Card(
                child: Center(
                  child: Text(
                    'Profile details panel',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Card(
                child: Center(
                  child: Text(
                    'Additional tablet content',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}