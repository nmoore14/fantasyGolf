import 'package:flutter/material.dart';
import 'package:fantasy_golf/components/nav/bottom_nav.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:fantasy_golf/pages/club_house_page.dart';
import 'package:fantasy_golf/pages/golfers_page.dart';
import 'package:fantasy_golf/pages/tournaments_page.dart';
import 'package:fantasy_golf/pages/profile_page.dart';
//home: queryData.size.width < 768.0 ? const BottomNav() : const SideRail(),

void main() => runApp(const FantasyGolfApp());

class FantasyGolfApp extends StatelessWidget {
  const FantasyGolfApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),     
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int currentPageIndex;

  @override
  void initState() {
    super.initState();
    currentPageIndex = 3;
  }

  void updatePageIndex(int newIndex) {
    setState(() {
      currentPageIndex = newIndex;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fantasy Golf'),
        actions: <Widget>[
          IconButton(onPressed: () => {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(onPressed: () => {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Container(
            alignment: Alignment.center,
            child: const GolfersPage(title: 'Golfers'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            alignment: Alignment.center,
            child: const TournamentsPage(title: 'Tournaments'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            alignment: Alignment.center,
            child: const ClubHousePage(title: 'My Club House'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            alignment: Alignment.center,
            child: const ProfilePage(title: 'Profile'),
          ),
        ),
      ][currentPageIndex],
      bottomNavigationBar: BottomNav(updatePageIndex)
    );
  }
}
