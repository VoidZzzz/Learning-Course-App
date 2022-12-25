import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {Key? key,
      required this.courseTitle,
      // required this.courseHeadline2,
      required this.courseImage,
      required this.courseHeadline,
      required this.endColor,
      required this.startColor,
      required this.smallBoxColor,
      required this.imageScale})
      : super(key: key);

  final String courseTitle, courseImage,courseHeadline;
  final int startColor, endColor,smallBoxColor;
  final double imageScale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Color(startColor), Color(endColor)])),
        child: Stack(
          children: [
            Positioned(
              left: 11,
              top: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Color(smallBoxColor)),
                child: Text(
                  courseHeadline,
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
            Positioned(
              left: 11,
              top: 80,
              child: Text(
                courseTitle,
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(courseImage,scale: imageScale)
              ),
          ],
        ),
      ),
    );
  }
}
