import 'package:app_ui/widgets/maskedWidget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 414,
          height: 896,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: const Color(0xFF29274F),
            borderRadius: BorderRadius.circular(22),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -2,
                top: -24,
                child: Container(
                  height: 392,
                  width: 416,
                  decoration: ShapeDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment(0.23, -0.97),
                      end: Alignment(-0.23, 0.97),
                      colors: <Color>[Color(0xFFF4C465), Color(0xFFC63956)],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
              ),
              const Positioned(left: 168, top: 21, child: Circle()),
              Positioned(
                left: 55,
                top: -24,
                child: Container(
                  width: 414,
                  height: 414,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Saly-36.png'),
                      fit: BoxFit.cover,
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
