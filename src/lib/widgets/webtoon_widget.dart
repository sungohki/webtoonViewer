import 'package:flutter/material.dart';
import 'package:toon/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true,
          ),
        );
        // route == detail widget to show
      },
      child: Column(
        children: [
          Container(
            width: 179,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    offset: const Offset(9, 10),
                    color: Colors.black.withOpacity(0.5),
                  ),
                ]),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              thumb,
              headers: const {
                "User-Agent":
                    "Mozilla/4.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
              },
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
