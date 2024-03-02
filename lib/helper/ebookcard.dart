import 'package:flutter/material.dart';

class EbookCard extends StatelessWidget {
  final AssetImage image;
  final String name;
  final String link;

  const EbookCard({
    super.key, // Specify the Key parameter
    required this.image,
    required this.name,
    required this.link,
  }); // Call super constructor with the specified key

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      // width: 300,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              child: Image(
                image: image,
                fit: BoxFit.cover,
                height: 180,
                //width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Read More.."),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.bookmark_border),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
