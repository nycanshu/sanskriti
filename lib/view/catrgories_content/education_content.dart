import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

Widget educationContent() {
  String videoId;
  videoId = YoutubePlayer.convertUrlToId(
      "https://www.youtube.com/watch?v=_fVad1jjsKc&pp=ygUaa25vdyB5b3VyIGluZGlhbiBteXRob2xvZ3k%3D")!;
// BBAyRBTfsOU
  late YoutubePlayerController controller;
  controller = YoutubePlayerController(
    initialVideoId: videoId,
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      loop: true,
      mute: true,
    ),
  );

  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment
            .stretch, // Ensures children take up the full width
        children: [
          const Text(
            'Recently Played:',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15, top: 20),
            child: Stack(
              children: [
                YoutubePlayer(
                  controller: controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.red,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.play_arrow),
                        onPressed: () {
                          controller.play();
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.pause),
                        onPressed: () {
                          controller.pause();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recommended for you :",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
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
            itemBuilder: ((context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  margin: const EdgeInsets.all(8),
                  child: Image.asset(
                    "images/education.png",
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}
