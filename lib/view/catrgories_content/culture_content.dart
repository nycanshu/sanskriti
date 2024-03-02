import 'package:flutter/material.dart';
import 'package:sanskriti/helper/culture_card.dart';

Widget cultureContent() {
  return ListView.builder(
    itemCount: 2,
    itemBuilder: (context, index) {
      return const CultureCard(
        image: AssetImage("images/ayurveda.jpg"),
        heading: "Culture",
        subheading:
            "Culture is the religion, cuisine, social habits, music and arts.",
      );
    },
  );
}
