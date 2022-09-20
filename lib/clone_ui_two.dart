import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class CloneUITwo extends StatelessWidget {
  const CloneUITwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'wanda.s',
          style: GoogleFonts.lato(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: Row(
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 56,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1525134479668-1bee5c7c6845?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Wanda S.',
                          style: GoogleFonts.comfortaa(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87),
                        ),
                        Text(
                          'Photographer/Nework',
                          style: GoogleFonts.comfortaa(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }
}
