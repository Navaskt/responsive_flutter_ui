import 'package:flutter/material.dart';

class ProfileMobile extends StatelessWidget {
  const ProfileMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile (Mobile)')),
      body: const Center(
        child: Text('This is the mobile profile screen'),
      ),
    );
  }
}