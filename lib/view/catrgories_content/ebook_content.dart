import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanskriti/controller/helper_controller.dart';
import 'package:sanskriti/helper/ebookcard.dart';
import 'package:sanskriti/utils/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

Widget ebookContent() {
  HelperController helperController = Get.put(HelperController());
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Recently Opened:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.blackshade,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                "No Recently Opened Books",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteshade,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text(
                "Recommended for you :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return EbookCard(
                  onTap: () async {
                    await helperController
                        .launchURL(helperController.eBooks[index]['link']);
                  },
                  name: helperController.eBooks[index]['name'],
                  image: AssetImage(helperController.eBooks[index]['image']),
                  link: helperController.eBooks[index]['link'],
                );
              },
              itemCount: helperController.eBooks.length),
        ],
      ),
    ),
  );
}
