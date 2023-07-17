import 'package:flutter/material.dart';
import 'package:fantasy_golf/components/nav/bottom_nav.dart';

class GolfersPage extends StatelessWidget {
  const GolfersPage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const Center(
        child: Text('List of Golfers'),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
