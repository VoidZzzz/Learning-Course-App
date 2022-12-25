import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalListViewDetails extends StatefulWidget {
  const VerticalListViewDetails(
      {Key? key,
      required this.courseDuration,
      required this.courseTitle,
      required this.courseImage,
      required this.courseCost})
      : super(key: key);

  final String courseImage, courseTitle, courseDuration, courseCost;

  @override
  State<VerticalListViewDetails> createState() =>
      _VerticalListViewDetailsState();
}

class _VerticalListViewDetailsState extends State<VerticalListViewDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 374,
        height: 82,
        decoration: BoxDecoration(
            color: const Color(0xff3E3A6D),
            borderRadius: BorderRadius.circular(19)),
        child: Row(
          children: [
            const SizedBox(width: 5),
            Container(
              clipBehavior: Clip.antiAlias,
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  ),
              child: ClipRect(
                child: Image.asset(widget.courseImage,fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.courseTitle,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      widget.courseDuration,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        color: const Color(0xff8C8C8C),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 30,
                      height: 18,
                      decoration: BoxDecoration(
                          color: const Color(0xffEB53A2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        widget.courseCost,
                        style: GoogleFonts.roboto(color: Colors.white, fontSize: 11),
                      )),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
