import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class ClubHousePage extends StatelessWidget {
  const ClubHousePage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          child: Row(
            children: <Widget>[
              Expanded(
              child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Welcome',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                    alignment: Alignment.topLeft,
                      child: Text(
                        title.toUpperCase(),
                        style: GoogleFonts.mavenPro(
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: AppColor.blueColor,
                          )
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ],
    );
  }
}
