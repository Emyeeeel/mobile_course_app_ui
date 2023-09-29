import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Vertical extends StatelessWidget {
  const Vertical({
    Key? key,
    required this.image,
    required this.title,
    required this.hours,
  }) : super(key: key);

  final String image, title, hours;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          left: 20,
        ),
        child: SizedBox(
          height: 82,
          child: Stack(
            children: [
              Container(
                height: 92,
                width: MediaQuery.of(context).size.width -
                    (MediaQuery.of(context).size.width * 0.13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF3E3A6D),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3F000000).withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: Container(
                  width: 99,
                  height: 82,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFDB61A1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class Vertical1 extends StatelessWidget {
  const Vertical1({
    Key? key,
    required this.image,
    required this.title,
    required this.hours,
    required this.rating,
  }) : super(key: key);

  final String image, title, hours;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF3E3A6D),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 13,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
              ),
              child: Row(
                children: [
                  Container(
                    width: 115,
                    height: 115,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 31, // Adjust this value as needed
                          child: Container(
                            width: 115,
                            height: 84,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFCCB4FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          hours,
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8C8C8C),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Vertical2 extends StatelessWidget {
  const Vertical2({
    Key? key,
    required this.image,
    required this.title,
    required this.hours,
    required this.rating,
  }) : super(key: key);

  final String image, title, hours;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8,
      ),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              height: 92,
              width: MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF3E3A6D),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 13,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 19,
              ),
              child: Row(
                children: [
                  Container(
                    width: 115,
                    height: 115,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 31, // Adjust this value as needed
                          child: Container(
                            width: 115,
                            height: 84,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFCCB4FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 115,
                          width: 115,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          hours,
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF8C8C8C),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
