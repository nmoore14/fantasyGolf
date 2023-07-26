import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function updatePageIndex;
  const BottomNav (this.updatePageIndex, {Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.sports_golf),
          label: 'Golfers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.golf_course),
          label: 'Tournaments',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.house),
          label: 'Club House',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Profile',
        ),
      ],
      currentIndex: currentPageIndex,
      onTap: (int index) {
        setState(() {
          currentPageIndex = index;
        });
        widget.updatePageIndex(index);
      },
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.deepOrange,
    );
  }
}
