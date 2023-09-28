import 'package:app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Master Class',
                  style: GoogleFonts.roboto(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            SizedBox(
                height: 349,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return const HorizontalList(
                        header: 'Recommended',
                        title: 'UI/UX DESIGNER BEGINNER',
                        image: 'assets/Saly-10.png',
                        linearStart: 0xFF9288E4,
                        linearEnd: 0xFF534EA7,
                      );
                    } else if (index == 1) {
                      return const HorizontalList1(
                        header: 'NEW CLASS',
                        title: 'GRAPHIC DESIGN MASTER',
                        image: 'assets/Saly-36.png',
                        start: 0xFFF4C465,
                        end: 0xFFC63956,
                      );
                    }
                  },
                )),
            const SizedBox(
              height: 34,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Online Class',
                  style: GoogleFonts.roboto(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'From over 80 Lectures',
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF9C9A9A),
                  ),
                ),
              ],
            ),
            ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index == 1) {
                    return const VerticalList1(
                      image: 'assets/Saly-13.png',
                      title: 'Full Stack Javascript',
                      hours: '6 Hours',
                      rating: 5.0,
                    );
                  } else {
                    return const VerticalList(
                      image: 'assets/Saly-24.png',
                      title: 'Flutter Developer',
                      hours: '8 Hours',
                      rating: 5.0,
                    );
                  }
                })
          ],
        ),
      ),
    );
  }
}
