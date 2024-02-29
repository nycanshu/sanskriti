import 'package:flutter/material.dart';
import 'package:sanskriti/utils/app_colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: AppColors.lightsky,
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
