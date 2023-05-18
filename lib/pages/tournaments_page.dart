import 'package:flutter/material.dart';

class TournamentsPage extends StatelessWidget {
  const TournamentsPage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text('Tournaments')
          ]
        ),
      ),
    );
  }
}
