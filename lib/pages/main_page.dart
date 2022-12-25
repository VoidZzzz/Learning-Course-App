import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course/pages/course_details.dart';
import 'package:online_course/widgets/horizontal_list.dart';
import 'package:online_course/widgets/vertical_list.dart';

import '../widgets/horizontal-main-list.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<HorizontalListOB> list = [
    const HorizontalListOB(
      courseHeadline: 'Recommended',
      courseTitle: 'PROGRAMMING \nBASIC',
      courseImage: "images/programming.gif",
      startColor: 0xff9288E4,
      endColor: 0xff534EA7,
      smallBoxColor: 0xffAFA8EE,
      imageScale: 1.9,
    ),
    const HorizontalListOB(
      courseHeadline: 'New Class',
      courseTitle: 'UI/UX Designer \nMEDIUM',
      courseImage: "images/uidesigner.gif",
      startColor: 0xff00a1ff,
      endColor: 0xff00ffaf,
      smallBoxColor: 0xff0fbed8,
      imageScale: 2,
    ),
    const HorizontalListOB(
      courseHeadline: 'New Class',
      courseTitle: 'PHOTO EDITING \nEXPERT',
      courseImage: "images/language3.gif",
      startColor: 0xffF4C465,
      endColor: 0xffC63956,
      smallBoxColor: 0xffF4C67A,
      imageScale: 5,
    ),
    const HorizontalListOB(
      courseHeadline: 'New Class',
      courseTitle: 'LANGUAGE CENTER \nEXPERT',
      courseImage: "images/anim1.gif",
      startColor: 0xffff00d4,
      endColor: 0xff00ddff,
      smallBoxColor: 0xfffe5bac,
      imageScale: 3.5,
    ),
    const HorizontalListOB(
      courseHeadline: 'New Class',
      courseTitle: 'COMPUTER CLASS \nEXPERT',
      courseImage: "images/computer.png",
      startColor: 0xff2d388a,
      endColor: 0xff00aeef,
      smallBoxColor: 0xff23395d,
      imageScale: 6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Online',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 36),
            ),
            Text(
              'Master Class',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 36),
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
              height: 349,
              child: ListView.builder(
                itemCount: list.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return CourseDetailsPage(
                          smallBoxColor: list[index].smallBoxColor,
                          image: list[index].courseImage,
                          title: list[index].courseTitle,
                          startColor: list[index].startColor,
                          endColor: list[index].endColor,
                        );
                      }));
                    },
                    child: HorizontalList(
                      courseTitle: list[index].courseTitle,
                      courseHeadline: list[index].courseHeadline,
                      // courseHeadline2: 'BEGINNER',
                      courseImage: list[index].courseImage,
                      startColor: list[index].startColor,
                      smallBoxColor: list[index].smallBoxColor,
                      endColor: list[index].endColor,
                      imageScale: list[index].imageScale,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Free online class',
              style: GoogleFonts.roboto(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            Text(
              'from over 80 lectures',
              style: GoogleFonts.roboto(
                  fontSize: 14, color: const Color(0xff9C9A9A)),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 20,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const VerticalListView(
                      courseImage: "images/Saly-24.png",
                      courseTitle: "Flutter Developer",
                      courseDuration: "1 month",
                      courseRating: 3.5);
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
