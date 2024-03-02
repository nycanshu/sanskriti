import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanskriti/controller/auth_controller.dart';
import 'package:sanskriti/utils/app_colors.dart';
import 'package:sanskriti/view/profile_page.dart';
import '../utils/text_styles.dart';
import 'explore_page.dart';

import 'homepageContent.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Declare _currentIndex as an instance variable

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    final List<Widget> _pages = [
      const HomePageContent(),
      const ExplorePage(),
      const ProfilePage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SansKriti', style: KTextStyle.homeHeaderTextStyle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.lightsky,
        leading: IconButton(
          onPressed: () {
            //function to open profile
          },
          icon: const Icon(
            Icons.menu,
            color: AppColors.black,
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: IconButton(
              onPressed: () {
                authController.logOut();
                //function to logout
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: AppColors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: AppColors.lightsky,
      ),
      body: _pages[_currentIndex],
    );
  }
}
