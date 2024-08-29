import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuideTextWidget extends StatelessWidget {
  const GuideTextWidget(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

Widget mainSectionTitle(String title) {
  return Text(
    title,
    style: GoogleFonts.lato(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget subSectionTitle(String title) {
  return Text(
    title,
    style: GoogleFonts.lato(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget paragraph(String text) {
  return Text(
    text,
    style: GoogleFonts.lato(
      color: Colors.white,
      fontSize: 14,
    ),
    textAlign: TextAlign.justify,
  );
}

final TextStyle paragraphStyle = GoogleFonts.lato(
  color: Colors.white,
  fontSize: 14,
);

final TextStyle headingStyle = GoogleFonts.lato(
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);
