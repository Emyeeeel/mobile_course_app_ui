import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerticalList extends StatelessWidget {
  const VerticalList({
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
                              color: const Color(0xFFFFB4B4),
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
                        RatingBar.builder(
                          initialRating: rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xFFF4C465),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 34,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.06,
                  width: MediaQuery.of(context).size.width * 0.06,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEB53A2),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class VerticalList1 extends StatelessWidget {
  const VerticalList1({
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
                        RatingBar.builder(
                          initialRating: rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 18,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xFFF4C465),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 34,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.06,
                  width: MediaQuery.of(context).size.width * 0.06,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEB53A2),
                  ),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
