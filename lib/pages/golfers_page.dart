import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GolfersPage extends StatelessWidget {
  const GolfersPage ({Key? key, required this.title}) : super(key: key);
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
                        title.toUpperCase(),
                        style: GoogleFonts.mavenPro(
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
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
