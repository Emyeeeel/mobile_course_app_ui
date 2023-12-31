import 'package:app_ui/widgets/maskedWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {Key? key,
      required this.header,
      required this.title,
      required this.image,
      required this.linearStart,
      required this.linearEnd})
      : super(key: key);
  final int linearStart, linearEnd;
  final String header, title, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 26,
      ),
      child: Container(
        height: 349,
        width: 246,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: const Alignment(1, 0.0),
                colors: <Color>[Color(linearStart), Color(linearEnd)])),
        child: Stack(
          children: [
            Positioned(right: 0, bottom: 0, child: MaskGroup()),
            Positioned(
                top: 15,
                left: 11,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 39,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAFABEE),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Text(
                    header,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
              top: 80,
              left: 14,
              child: SizedBox(
                width: 190,
                child: Wrap(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.roboto(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  image,
                )),
          ],
        ),
      ),
    );
  }
}

class HorizontalList1 extends StatelessWidget {
  const HorizontalList1(
      {Key? key,
      required this.header,
      required this.title,
      required this.image,
      required this.start,
      required this.end})
      : super(key: key);
  final int start, end;
  final String header, title, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 26,
      ),
      child: Container(
        height: 349,
        width: 246,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: const Alignment(1, 0.0),
                colors: <Color>[Color(start), Color(end)])),
        child: Stack(
          children: [
            Positioned(right: 0, bottom: 0, child: MaskGroup1()),
            Positioned(
                top: 15,
                left: 11,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: 108,
                  height: 39,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4C67A),
                    borderRadius: BorderRadius.circular(36),
                  ),
                  child: Text(
                    header,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                )),
            Positioned(
              top: 80,
              left: 14,
              child: SizedBox(
                width: 202,
                child: Wrap(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.roboto(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: -35,
                bottom: -15,
                child: Image.asset(
                  image,
                )),
          ],
        ),
      ),
    );
  }
}
