import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_course/widgets/class_details_vertical_listview.dart';
import 'package:online_course/widgets/list_view_vertical_details.dart';

class CourseDetailsPage extends StatefulWidget {
  final String title;
  final String image;
  final int startColor;
  final int endColor;
  final int smallBoxColor;
  const CourseDetailsPage(
      {Key? key,
      required this.title,
      required this.image,
      required this.endColor,
      required this.startColor,
      required this.smallBoxColor})
      : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  List<DetailsVerticalOB> list = [
    const DetailsVerticalOB(
        courseImage: "images/flutter2.png",
        courseTitle: "Flutter",
        courseDuration: "2 weeks",
        price: "15\$"),
    const DetailsVerticalOB(
        courseImage: "images/java2.png",
        courseTitle: "Java",
        courseDuration: "2 weeks",
        price: "15\$"),
    const DetailsVerticalOB(
        courseImage: "images/react2.png",
        courseTitle: "React Native",
        courseDuration: "2 weeks",
        price: "15\$"),
    const DetailsVerticalOB(
        courseImage: "images/kotlin2.png",
        courseTitle: "Kotlin",
        courseDuration: "2 weeks",
        price: "15\$"),
    const DetailsVerticalOB(
        courseImage: "images/php2.webp",
        courseTitle: "PHP",
        courseDuration: "2 weeks",
        price: "15\$"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 392,
                  width: 416,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(widget.startColor),
                        Color(widget.endColor)
                      ],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(widget.image),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 20),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: 45,height: 45,
                        decoration: BoxDecoration(
                          color: Color(widget.smallBoxColor),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.arrow_back_ios_new,color: Colors.white,),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 22, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                    initialRating: 4.5,
                    minRating: 1,
                    itemSize: 20,
                    itemCount: 5,
                    allowHalfRating: true,
                    unratedColor: Colors.grey[500],
                    itemBuilder: (index, _) => const Icon(
                      Icons.star,
                      color: Color(0xffF4C465),
                    ),
                    onRatingUpdate: (ratingScore) {
                      print(ratingScore);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.title,
                    style: GoogleFonts.roboto(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 120,
                        child: Stack(
                          children: [
                            Positioned(
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("images/Ellipse 4.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 22.5,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("images/Ellipse 5.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 45,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("images/Ellipse 6.png"),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 67.5,
                              child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage("images/Ellipse 3.png"),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '+65k Members',
                        style: GoogleFonts.roboto(
                            fontSize: 18, color: const Color(0xffCACACA)),
                      ),
                      const SizedBox(
                        width: 41,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff353567)),
                        child: const Icon(
                          Icons.thumb_up_alt,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return VerticalListViewDetails(
                        courseDuration: list[index].courseDuration,
                        courseTitle: list[index].courseTitle,
                        courseImage: list[index].courseImage,
                        courseCost: list[index].price);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
