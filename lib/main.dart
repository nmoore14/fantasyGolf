import 'package:fantasy_golf/pages/golers_page.dart';
import 'package:fantasy_golf/pages/tournaments_page.dart';
import 'package:flutter/material.dart';
import 'package:fantasy_golf/components/nav/bottom_nav.dart';
import 'package:fantasy_golf/components/nav/side_rail.dart';

//home: queryData.size.width < 768.0 ? const BottomNav() : const SideRail(),

void main() => runApp(const FantasyGolfApp());

class FantasyGolfApp extends StatelessWidget {
  const FantasyGolfApp({super.key});
  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: queryData.size.width < 768.0 ? const BottomNav() : const SideRail(),
    );
  }
}


