import 'package:flutter/material.dart';
import 'package:plants_project/widgets/profile_container.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 79),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: const Color(0xffE3E1D5),
            ),
          ),
          child: const Column(
            children: [
              SizedBox(
                height: 15,
              ),
              PriceContainer(
                title: 'Basics',
                imagePath: "assets/icons/accordion_btn.svg",
              ),
              SizedBox(
                height: 15,
              ),
              PriceContainer(
                  title: "Standard",
                  imagePath: "assets/icons/accordion_btn.svg"),
              SizedBox(
                height: 15,
              ),
              PriceContainer(
                  title: 'Pro care',
                  imagePath: "assets/icons/accordion_btn.svg"),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
