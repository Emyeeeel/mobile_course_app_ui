import 'package:flutter/material.dart';

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
            Positioned(
              top: 15,
              left: 11,
              child: Container(
                height: 39,
                decoration: BoxDecoration(
                  color: const Color(0xFFAFABEE),
                  borderRadius: BorderRadius.circular(36),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
