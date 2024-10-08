import 'package:flutter/material.dart';

class ImageAndDescription extends StatelessWidget {
  const ImageAndDescription({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            title,
            style: const TextStyle(
                color: Color(0xffE06733),
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
        ),
        Center(
          child: Text(
            description,
            style: const TextStyle(
                color: Color(0xff717171),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Center(
          child: Image.asset(
            imagePath,
          ),
        ),
      ],
    );
  }
}
