import 'package:flutter/material.dart';

class TournamentsPage extends StatelessWidget {
  const TournamentsPage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(title),
          ],
        ),
      ],
    );
  }
}
