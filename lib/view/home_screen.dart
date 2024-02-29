import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanskriti/controller/helper_controller.dart';
import 'package:sanskriti/utils/app_colors.dart';
import 'package:sanskriti/view/profile_page.dart';
import '../helper/categories_card.dart';
import '../helper/custom_carosel.dart';
import '../utils/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HelperController helperController = Get.put(HelperController());
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
      body: ListView(
        children: [
          Column(
            children: [
              ImageCarousel(
                imageList: helperController.image,
                height: 250,
                autoPlay: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'See all..',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
            itemCount: helperController.topPicks.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                imageUrl: helperController.topPicks[index]["image"],
                name: helperController.topPicks[index]["name"],
              );
            },
          ),
        ],
      ),
    );
  }
}
