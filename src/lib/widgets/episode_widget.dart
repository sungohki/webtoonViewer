import 'package:flutter/material.dart';
import 'package:toon/models/webtoon_episode_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Episode extends StatelessWidget {
  final WebtoonEpisodeModel ep;

  const Episode({
    super.key,
    required this.ep,
  });

  onButtonTap() async {
    await launchUrlString("https://google.com");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.green.shade500,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            color: Colors.black.withOpacity(0.5),
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            ep.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.chevron_right_rounded,
            color: Colors.white.withOpacity(0.5),
          ),
        ]),
      ),
    );
  }
}
