import 'package:app_ui/widgets/maskedWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailsScreen> {
  final double rating = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SizedBox(
          child: Stack(children: [
        Positioned(
          left: -2,
          top: -24,
          child: Container(
            height: 392,
            width: 430,
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
        const Positioned(
          left: 168,
          top: 20,
          child: Circle(),
        ),
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
        Positioned.fill(
          left: 20,
          top: 390,
          child: RatingBar.builder(
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
        ),
        Positioned(
          left: 20,
          top: 419,
          child: Text(
            'Graphic Design Master',
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        )
      ])),
    );
  }
}
