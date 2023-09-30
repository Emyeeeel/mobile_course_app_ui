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
          right: 20,
          top: 12,
          bottom: 12,
        ),
        child: SizedBox(
          height: 82,
          child: Stack(
            children: [
              Container(
                height: 82,
                width: 374,
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
              Positioned(
                left: 110,
                top: 19,
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 110,
                top: 43,
                child: Text(
                  hours,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF8C8C8C),
                  ),
                ),
              ),
              Positioned(
                left: 185,
                top: 42,
                child: Container(
                  width: 39,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEB53A2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Free',
                      style: GoogleFonts.roboto(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -15,
                top: -25,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
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
  }) : super(key: key);

  final String image, title, hours;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        top: 12,
        bottom: 12,
      ),
      child: SizedBox(
        height: 82,
        child: Stack(children: [
          Positioned(
            left: 20,
            child: SizedBox(
              child: Stack(
                children: [
                  Container(
                    height: 82,
                    width: 374,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: 99,
                    height: 82,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF4C465),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 19,
                    child: Text(
                      title,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 43,
                    child: Text(
                      hours,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF8C8C8C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: -24,
            child: Container(
              width: 133,
              height: 133,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]),
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
  }) : super(key: key);

  final String image, title, hours;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        top: 12,
        bottom: 12,
      ),
      child: SizedBox(
        height: 82,
        child: Stack(children: [
          Positioned(
            left: 20,
            child: SizedBox(
              child: Stack(
                children: [
                  Container(
                    height: 82,
                    width: 374,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    width: 99,
                    height: 82,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF326AA5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 19,
                    child: Text(
                      title,
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110,
                    top: 43,
                    child: Text(
                      hours,
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF8C8C8C),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 8,
            top: 10,
            child: Container(
              width: 116,
              height: 62,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
