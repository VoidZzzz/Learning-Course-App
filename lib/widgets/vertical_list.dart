import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalListView extends StatelessWidget {
  const VerticalListView(
      {Key? key,
      required this.courseImage,
      required this.courseTitle,
      required this.courseDuration,
      required this.courseRating})
      : super(key: key);

  final String courseImage, courseTitle, courseDuration;
  final double courseRating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Container(
        // color: Colors.grey[600],
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF3E3A6D),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 13,
                    spreadRadius: 0,
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, bottom: 19),
              child: Row(
                children: [
                  Container(
                    height: 115,
                    width: 115,
                    child: Image.asset(courseImage),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        courseTitle,
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Text(
                        courseDuration,
                        style: GoogleFonts.roboto(
                            color: const Color(0xff8C8C8C), fontSize: 12),
                      ),
                      RatingBar.builder(
                          initialRating: courseRating,
                          itemCount: 5,
                          allowHalfRating: true,
                          itemSize: 14,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Color(0xffF4C465),
                              ),
                          onRatingUpdate: (starRating) {
                            print(starRating);
                          })
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 70,
              child: GestureDetector(
                onTap: (){
                  print('Tapped on Class');
                },
                child: Container(
                  // height: ,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffEB53A2),),
                  child: const Icon(
                    Icons.play_arrow_sharp,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
