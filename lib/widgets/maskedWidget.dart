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
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.23, -0.97),
                      end: Alignment(-0.23, 0.97),
                      colors: [Color(0xFF9288E4), Color(0xFF534EA7)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 192,
                child: Container(
                  width: 195,
                  height: 179,
                  decoration: ShapeDecoration(
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
