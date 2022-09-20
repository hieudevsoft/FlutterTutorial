import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CloneUIOne extends StatelessWidget {
  const CloneUIOne({super.key});

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final heightStatusBar = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: SizedBox(
                    height: heightScreen / 2,
                  ),
                ),
                Positioned(
                  child: SizedBox(
                    width: double.infinity,
                    height: heightScreen / 2 - 40,
                    child: ClipRRect(
                      child: SizedBox.fromSize(
                        child: Image.network(
                          "https://images.pexels.com/photos/3217911/pexels-photo-3217911.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  height: 80,
                  width: 80,
                  bottom: 0,
                  right: 24,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/736x/ee/ac/39/eeac391c501cb7b588a10c70d4cad63d.jpg"),
                    radius: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: heightStatusBar + 10, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (() {
                            print("back");
                          }),
                          child: const Icon(Icons.arrow_back_rounded)),
                      GestureDetector(
                        onTap: (() {
                          print("like");
                        }),
                        child: const AnimatedScale(
                          scale: 1,
                          duration: Duration(milliseconds: 1000),
                          child: Icon(Icons.favorite_outline_rounded),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid city tour for Designers',
                    style: GoogleFonts.lato(
                      letterSpacing: .5,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    textAlign: TextAlign.start,
                    'city, madrid, espaha, desginers, ui, ux, travel',
                    style: GoogleFonts.roboto(
                      color: Colors.grey.shade200,
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        '20',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Icon(Icons.favorite_rounded)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        '24',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Icon(Icons.upload_rounded)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        '82',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Icon(Icons.message_rounded)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        textAlign: TextAlign.start,
                        '295',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Icon(Icons.face_rounded)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Divider(color: Colors.grey.shade300),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Wrap(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
                    style: GoogleFonts.comfortaa(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
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
