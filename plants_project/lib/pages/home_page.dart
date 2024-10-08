import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plants_project/pages/menu_page.dart';
import 'package:plants_project/widgets/images_and_description.dart';
import 'package:plants_project/widgets/profile_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool onPressed = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffEDF2EC),
          actions:  [
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage(),));
              },  icon: Icon( Icons.density_small_outlined)),
            )
          ],
          title: Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              SvgPicture.asset(
                'assets/icons/logo_vector.svg',
                fit: BoxFit.scaleDown,
              ),
              const Text(
                'Plants',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              color: const Color(0xffEDF2EC),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'We grow ',
                        style: TextStyle(
                            color: Color(0xff717171),
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'plants',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff499A18),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' and give you oxygen',
                            style: TextStyle(
                                color: Color(0xff717171), fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.36),
                    const Text(
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff636060)),
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          width: 100,
                          height: 34,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffE06733),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "LEARN MORE",
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'We are ',
                        style: TextStyle(
                          color: Color(0xff499A18),
                          fontSize: 20,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'professional experienced',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffE06733),
                            ),
                          ),
                          TextSpan(
                            text: ' gardeners',
                            style: TextStyle(
                                color: Color(0xff499A18), fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                      style: GoogleFonts.inter(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                        width: 150,
                        height: 147,
                        child: Image.asset('assets/icons/houseplant.png'))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color(0xffEDF2EC),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Service and our projects',
                      style: TextStyle(
                          color: Color(0xff499A18),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 30, right: 10),
                          width: 100,
                          height: 34,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffE06733),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Garden",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 30),
                          width: 100,
                          height: 34,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xffE06733),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Lawn",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, right: 20),
                      width: 100,
                      height: 34,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffE06733),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Planting",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.36),
                    Center(
                      child: Image.asset(
                        'assets/icons/first.png',
                      ),
                    ),
                    const ImageAndDescription(
                      title: 'Garden care',
                      description: 'Lorem Ipsum has been the industry',
                      imagePath: 'assets/icons/first (1).png',
                    ),
                    const ImageAndDescription(
                        title: "Planting",
                        description: "Lorem Ipsum has been the industry",
                        imagePath: "assets/icons/first (2).png"),
                    const ImageAndDescription(
                        title: "Planting",
                        description: "Lorem Ipsum has been the industry",
                        imagePath: "assets/icons/first (3).png"),
                    const ImageAndDescription(
                        title: "Planting",
                        description: "Lorem Ipsum has been the industry",
                        imagePath: 'assets/icons/first (4).png'),
                    const ImageAndDescription(
                        title: "Garden Care",
                        description: "Lorem Ipsum has been the industry",
                        imagePath: 'assets/icons/first (5).png'),
                    const Center(
                      child: Text(
                        "Planting",
                        style: TextStyle(
                            color: Color(0xffE06733),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Lorem Ipsum has been the industry",
                        style: TextStyle(
                            color: Color(0xff717171),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 40),
                    child: Text(
                      "Prices",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 79),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Our best ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'gardeners',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff499A18),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: ' are ready to help you',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 120,
                    height: 34,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffE06733),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                            color: Color(0xffE06733),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              color: const Color(0xffEDF2EC),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Contact us",
                      style: TextStyle(
                          color: Color(0xff499A18),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffD6E7D2),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  const Color(0xff00000040).withOpacity(0.25),
                              offset: const Offset(0, 4),
                              blurRadius: 4,
                              spreadRadius: 0)
                        ]),
                    margin: const EdgeInsets.symmetric(horizontal: 22),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "City",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SvgPicture.asset(
                            "assets/icons/accordion_btn (2).svg",
                            width: 18,
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 132,
                  ),
                  SizedBox(
                      width: 100,
                      height: 124,
                      child: Image.asset('assets/icons/contact_woman 1.png')),
                  SizedBox(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Spacer(),
                            Icon(Icons.copyright),
                            Text(
                              "     2022   github",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          "Rolling Scopes School",
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            children: [
                              const Spacer(),
                              SvgPicture.asset('assets/icons/inst 1.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset('assets/icons/fb 1.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset('assets/icons/tw 1.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset('assets/icons/pinterest 1.svg'),
                              const Spacer(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
