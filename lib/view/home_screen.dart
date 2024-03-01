import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanskriti/utils/app_colors.dart';
import 'package:sanskriti/view/profile_page.dart';
import '../utils/text_styles.dart';
import 'explore_page.dart';
import 'feedbackPage.dart';
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
    final List<Widget> _pages = [
      const HomePageContent(),
      const ExplorePage(),
      const FeedbackPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('SansKriti', style: KTextStyle.homeHeaderTextStyle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.lightsky,
        leading: GestureDetector(
          onTap: () {
            //function to open drawer
          },
          child: const Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Icon(
              Icons.menu,
              color: AppColors.black,
              size: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {
                //function to open profile
                Get.to(const ProfilePage());
              },
              child: const Icon(
                Icons.person,
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
            label: 'Feedback',
          ),
        ],
        selectedItemColor: AppColors.lightsky,
      ),
      body: _pages[_currentIndex],
    );
  }
}
