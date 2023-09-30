import 'package:app_ui/widgets/third_widgetList.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    const double rating = 5.0;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        children: [
          Container(
              height: 392,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1, 0.0),
                    colors: <Color>[Color(0xFFF4C465), Color(0xFFC63956)]),
              ),
              child: Container(
                height: 414,
                width: 414,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/Saly-36.png'),
                      fit: BoxFit.fill),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 22,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 18,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const SizedBox(
                  height: 11,
                ),
                Text(
                  'Graphic Design Master',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 29),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 112.5,
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                height: 45,
                                width: 45,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/Ellipse 3.png'))),
                              )),
                              Positioned(
                                  left: 22.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Ellipse 4.png'))),
                                  )),
                              Positioned(
                                  left: 45,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Ellipse 5.png'))),
                                  )),
                              Positioned(
                                  left: 67.5,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Ellipse 6.png'))),
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          '+28K Members',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFCACACA),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 54,
                      height: 47,
                      decoration: BoxDecoration(
                          color: const Color(0xFF353567),
                          borderRadius: BorderRadius.circular(6)),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/Frame.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 39,
          ),
          ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const Vertical(
                    image: 'assets/Saly-20.png',
                    title: 'Introduction Design Graphic',
                    hours: '12 minutes',
                  );
                } else if (index == 1) {
                  return const Vertical1(
                    image: 'assets/Saly-21.png',
                    title: 'Fundamental of Design',
                    hours: '16 minutes',
                  );
                } else {
                  return const Vertical2(
                    image: 'assets/Saly-25.png',
                    title: 'Layout Design',
                    hours: '10 minutes',
                  );
                }
              }),
        ],
      )),
    );
  }
}
