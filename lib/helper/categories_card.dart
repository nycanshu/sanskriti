import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CategoryItem({
    super.key,
    required this.imageUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: imageUrl.isNotEmpty
                ? AssetImage(imageUrl)
                : const AssetImage(
                    'images/Hampi_1.jpg'), // Provide default image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            name ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
