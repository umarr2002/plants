import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({
    super.key,
    required this.title,
    required this.imagePath,
  });
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xffEDF2EC),
          borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            SvgPicture.asset(
              imagePath,
              width: 18,
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
