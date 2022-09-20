import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  const BoldText(
      {super.key,
      required this.text,
      this.textSize = 18,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: textSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}

class SimpleText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color color;
  const SimpleText(
      {super.key,
      required this.text,
      this.textSize = 14,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: textSize,
        color: color,
      ),
    );
  }
}
