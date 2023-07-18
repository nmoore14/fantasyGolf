import 'package:flutter/material.dart';

class ClubHousePage extends StatelessWidget {
  const ClubHousePage ({Key? key, required this.title}) : super(key: key);
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
