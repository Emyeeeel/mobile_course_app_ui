import 'package:flutter/material.dart';

class MaskGroup extends StatelessWidget {
  final int linearStart = 0xFF9288E4;

  final int linearEnd = 0xFF534EA7;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 246,
          height: 349,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                    height: 349,
                    width: 246,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: const Alignment(1, 0.0),
                            colors: <Color>[
                              Color(linearStart),
                              Color(linearEnd)
                            ]))),
              ),
              Positioned(
                left: 100,
                top: 192,
                child: Container(
                  width: 195,
                  height: 179,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFEE9F39),
                    shape: OvalBorder(
                      side: BorderSide(width: 14, color: Color(0xFFE4B249)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MaskGroup1 extends StatelessWidget {
  final int start = 0xFFF4C465;
  final int end = 0xFFC63956;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 246,
          height: 349,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                    width: 246,
                    height: 349,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: const Alignment(1, 0.0),
                            colors: <Color>[Color(start), Color(end)]))),
              ),
              Positioned(
                left: 100,
                top: 192,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 179,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF2857A9),
                    shape: OvalBorder(
                      side: BorderSide(width: 14, color: Color(0xFF326AA5)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 246,
          height: 349,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 246,
                  height: 349,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 111,
                child: Container(
                  width: 283,
                  height: 260,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF2857A9),
                    shape: OvalBorder(
                      side: BorderSide(width: 14, color: Color(0xFF326AA5)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
